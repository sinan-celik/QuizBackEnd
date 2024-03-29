﻿using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using System.Collections.Generic;
using System.Linq;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfQuestionDal : EfEntityRepositoryBase<Question, UserContext>, IQuestionDal
    {
        public List<Question> GetQuestionsByProjectCode(List<int> qIds)
        {
            using (var context = new UserContext())
            {
                var result = from q in context.Questions
                             where qIds.Contains(q.Id) /*q.Id == pCode*/
                             select new Question
                             {
                                 Id = q.Id,
                                 ProjectCode = q.ProjectCode,
                                 QuestionText = q.QuestionText,
                                 QuestionImage = q.QuestionImage,
                                 AnswerType = q.AnswerType
                             };

                return result.ToList();
            }
        }
    }
}
