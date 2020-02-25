using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Core.Entities.Concrete;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfQuestionDal : EfEntityRepositoryBase<Question, UserContext>, IQuestionDal
    {
        public List<Question> GetQuestionsByProjectCode(string pCode)
        {
            using (var context = new UserContext())
            {
                var result = from q in context.Questions
                             where q.ProjectCode == pCode
                             select new Question
                             {
                                 Id = q.Id,
                                 ProjectCode = q.ProjectCode,
                                 QuestionText = q.QuestionText
                             };

                return result.ToList();
            }
        }
    }
}
