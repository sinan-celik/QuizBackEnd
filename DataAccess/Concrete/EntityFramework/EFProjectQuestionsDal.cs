using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using System.Collections.Generic;
using System.Linq;

namespace DataAccess.Concrete.EntityFramework
{
    public class EFProjectQuestionsDal : EfEntityRepositoryBase<ProjectQuestions, UserContext>, IProjectQuestionDal
    {
        public List<ProjectQuestions> GetProjectQuestionsByProjectCode(string pCode)
        {
            using (var context = new UserContext())
            {
                var result = from q in context.ProjectQuestions
                             where q.ProjectCode == pCode
                             select new ProjectQuestions
                             {
                                 Id = q.Id,
                                 ProjectCode = q.ProjectCode,
                                 QuestionId = q.QuestionId
                             };

                return result.ToList();
            }
        }
    }
}
