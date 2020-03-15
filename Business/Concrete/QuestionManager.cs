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
        public QuestionManager(IQuestionDal questionDal, IAnswerDal answerDal)
        {
            _questionDal = questionDal;
            _answerDal = answerDal;
        }

        public IDataResult<QuestionForResponseDto> GetQuestionsAndAnswerByProjectCode(string pCode)
        {
            var questions = _questionDal.GetQuestionsByProjectCode(pCode);
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
