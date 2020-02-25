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
            var result = new Results();

            //{
            //    Email = userForRegisterDto.Email,
            //    Name = userForRegisterDto.Name,
            //    Phone = userForRegisterDto.Phone,
            //    PasswordHash = passwordHash,
            //    PasswordSalt = passwordSalt,
            //    IsActive = true
            //};

            if (answers.Count > 0)
            {
                result.incorrect_answers.Add(answers[0].AnswerText);
            }


            if (questions.Count > 0)
            {
                resp.response_code = 0;
                resp.results.Add(result);
            }


            return new SuccessDataResult<QuestionForResponseDto>(resp, Messages.RegisterSuccessfull);
        }
    }
}
