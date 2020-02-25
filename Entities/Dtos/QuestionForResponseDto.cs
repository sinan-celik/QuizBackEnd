using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Dtos
{
    public class QuestionForResponseDto : IDto
    {
        public int response_code { get; set; }
        public List<QuestionResults> results { get; set; }

        public QuestionForResponseDto()
        {
            results = new List<QuestionResults>();
        }

    }

    public class QuestionResults : IDto
    {
        public string category { get; set; }
        public string type { get; set; }
        public string difficulty { get; set; }
        public string question { get; set; }
        public string correct_answer { get; set; }
        public List<string> incorrect_answers { get; set; }

        public QuestionResults()
        {
            incorrect_answers = new List<string>();
        }

    }

}
