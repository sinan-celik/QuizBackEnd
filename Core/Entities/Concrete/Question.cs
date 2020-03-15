using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Entities.Concrete
{
    public class Question : EntityBase, IEntity
    {
        public string ProjectCode { get; set; }
        public string QuestionText { get; set; }
        public string QuestionImage { get; set; }
        public string AnswerType { get; set; }
    }
}
