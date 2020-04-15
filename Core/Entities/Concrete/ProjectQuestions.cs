using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Entities.Concrete
{
    public class ProjectQuestions : EntityBase, IEntity
    {
        public string ProjectCode { get; set; }
        public int QuestionId { get; set; }

    }
}
