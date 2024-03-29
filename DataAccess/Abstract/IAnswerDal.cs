﻿using Core.DataAccess;
using Core.Entities.Concrete;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Abstract
{
    public interface IAnswerDal : IEntityRepository<Answer>
    {
        List<Answer> GetAnswerByProjectCode(string pCode);
    }
}
