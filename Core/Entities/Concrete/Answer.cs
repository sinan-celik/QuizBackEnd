using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Entities.Concrete
{
    public class Answer : EntityBase, IEntity
    {
        public string ProjectCode { get; set; }
        public int QuestionId { get; set; }
        public string AnswerText { get; set; }
        public bool IsTrue { get; set; }
        public string AnswerImage { get; set; }

    }
}
