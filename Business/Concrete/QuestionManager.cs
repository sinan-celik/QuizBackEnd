using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class QuestionManager : IQuestionService
    {
        private IQuestionDal _questionDal;
        private IAnswerDal _answerDal;
        private IProjectQuestionDal _projectQuestionDal;
        public QuestionManager(IQuestionDal questionDal, IAnswerDal answerDal, IProjectQuestionDal projectQuestionDal)
        {
            _questionDal = questionDal;
            _answerDal = answerDal;
            _projectQuestionDal = projectQuestionDal;
        }

        public IDataResult<QuestionForResponseDto> GetQuestionsAndAnswerByProjectCode(string pCode)
        {
            var projectQuestions = _projectQuestionDal.GetProjectQuestionsByProjectCode(pCode);

            var qIds = new List<int>();
            foreach (var pq in projectQuestions)
            {
                qIds.Add(pq.Id);
            }

            var questions = _questionDal.GetQuestionsByProjectCode(qIds);
            var answers = _answerDal.GetAnswerByProjectCode(pCode);

            var resp = new QuestionForResponseDto();
            resp.response_code = 0;

            if (questions.Count > 0 && answers.Count > 0)
            {
                foreach (var q in questions)
                {
                    var qresult = new QuestionResults();
                    qresult.category = "Cities";
                    qresult.type = "multiple";
                    qresult.difficulty = "medium";
                    qresult.questionImage = q.QuestionImage;
                    qresult.question = q.QuestionText;
                    qresult.answerType = q.AnswerType;
                    qresult.correct_answer = answers.Find(x => x.QuestionId == q.Id && x.IsTrue == true);

                    var incorrects = answers.FindAll(x => x.QuestionId == q.Id && x.IsTrue == false);

                    foreach (var ic in incorrects)
                    {
                        qresult.incorrect_answers.Add(ic);
                    }

                    resp.results.Add(qresult);
                }
                
            }

            return new SuccessDataResult<QuestionForResponseDto>(resp, Messages.RegisterSuccessfull);
        }
    }
}
