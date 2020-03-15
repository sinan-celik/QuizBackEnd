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
    public class EfAnswerDal: EfEntityRepositoryBase<Answer, UserContext>, IAnswerDal
    {
        public List<Answer> GetAnswerByProjectCode(string pCode)
        {
            using (var context = new UserContext())
            {
                var result = from a in context.Answers
                             where a.ProjectCode == pCode
                             select new Answer
                             {
                                 Id = a.Id,
                                 ProjectCode = a.ProjectCode,
                                 QuestionId = a.QuestionId,
                                 AnswerText = a.AnswerText,
                                 IsTrue = a.IsTrue,
                                 AnswerImage = a.AnswerImage
                             };

                return result.ToList();
            }
        }

    }
}
