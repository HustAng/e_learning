package com.ang.elearning.po;

import java.util.ArrayList;
import java.util.List;

public class WordExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WordExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andExplainationIsNull() {
            addCriterion("explaination is null");
            return (Criteria) this;
        }

        public Criteria andExplainationIsNotNull() {
            addCriterion("explaination is not null");
            return (Criteria) this;
        }

        public Criteria andExplainationEqualTo(String value) {
            addCriterion("explaination =", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationNotEqualTo(String value) {
            addCriterion("explaination <>", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationGreaterThan(String value) {
            addCriterion("explaination >", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationGreaterThanOrEqualTo(String value) {
            addCriterion("explaination >=", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationLessThan(String value) {
            addCriterion("explaination <", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationLessThanOrEqualTo(String value) {
            addCriterion("explaination <=", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationLike(String value) {
            addCriterion("explaination like", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationNotLike(String value) {
            addCriterion("explaination not like", value, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationIn(List<String> values) {
            addCriterion("explaination in", values, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationNotIn(List<String> values) {
            addCriterion("explaination not in", values, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationBetween(String value1, String value2) {
            addCriterion("explaination between", value1, value2, "explaination");
            return (Criteria) this;
        }

        public Criteria andExplainationNotBetween(String value1, String value2) {
            addCriterion("explaination not between", value1, value2, "explaination");
            return (Criteria) this;
        }

        public Criteria andPronunciationIsNull() {
            addCriterion("pronunciation is null");
            return (Criteria) this;
        }

        public Criteria andPronunciationIsNotNull() {
            addCriterion("pronunciation is not null");
            return (Criteria) this;
        }

        public Criteria andPronunciationEqualTo(String value) {
            addCriterion("pronunciation =", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationNotEqualTo(String value) {
            addCriterion("pronunciation <>", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationGreaterThan(String value) {
            addCriterion("pronunciation >", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationGreaterThanOrEqualTo(String value) {
            addCriterion("pronunciation >=", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationLessThan(String value) {
            addCriterion("pronunciation <", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationLessThanOrEqualTo(String value) {
            addCriterion("pronunciation <=", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationLike(String value) {
            addCriterion("pronunciation like", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationNotLike(String value) {
            addCriterion("pronunciation not like", value, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationIn(List<String> values) {
            addCriterion("pronunciation in", values, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationNotIn(List<String> values) {
            addCriterion("pronunciation not in", values, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationBetween(String value1, String value2) {
            addCriterion("pronunciation between", value1, value2, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andPronunciationNotBetween(String value1, String value2) {
            addCriterion("pronunciation not between", value1, value2, "pronunciation");
            return (Criteria) this;
        }

        public Criteria andSentenceIsNull() {
            addCriterion("sentence is null");
            return (Criteria) this;
        }

        public Criteria andSentenceIsNotNull() {
            addCriterion("sentence is not null");
            return (Criteria) this;
        }

        public Criteria andSentenceEqualTo(String value) {
            addCriterion("sentence =", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceNotEqualTo(String value) {
            addCriterion("sentence <>", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceGreaterThan(String value) {
            addCriterion("sentence >", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceGreaterThanOrEqualTo(String value) {
            addCriterion("sentence >=", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceLessThan(String value) {
            addCriterion("sentence <", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceLessThanOrEqualTo(String value) {
            addCriterion("sentence <=", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceLike(String value) {
            addCriterion("sentence like", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceNotLike(String value) {
            addCriterion("sentence not like", value, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceIn(List<String> values) {
            addCriterion("sentence in", values, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceNotIn(List<String> values) {
            addCriterion("sentence not in", values, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceBetween(String value1, String value2) {
            addCriterion("sentence between", value1, value2, "sentence");
            return (Criteria) this;
        }

        public Criteria andSentenceNotBetween(String value1, String value2) {
            addCriterion("sentence not between", value1, value2, "sentence");
            return (Criteria) this;
        }

        public Criteria andPhonogramIsNull() {
            addCriterion("phonogram is null");
            return (Criteria) this;
        }

        public Criteria andPhonogramIsNotNull() {
            addCriterion("phonogram is not null");
            return (Criteria) this;
        }

        public Criteria andPhonogramEqualTo(String value) {
            addCriterion("phonogram =", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramNotEqualTo(String value) {
            addCriterion("phonogram <>", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramGreaterThan(String value) {
            addCriterion("phonogram >", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramGreaterThanOrEqualTo(String value) {
            addCriterion("phonogram >=", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramLessThan(String value) {
            addCriterion("phonogram <", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramLessThanOrEqualTo(String value) {
            addCriterion("phonogram <=", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramLike(String value) {
            addCriterion("phonogram like", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramNotLike(String value) {
            addCriterion("phonogram not like", value, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramIn(List<String> values) {
            addCriterion("phonogram in", values, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramNotIn(List<String> values) {
            addCriterion("phonogram not in", values, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramBetween(String value1, String value2) {
            addCriterion("phonogram between", value1, value2, "phonogram");
            return (Criteria) this;
        }

        public Criteria andPhonogramNotBetween(String value1, String value2) {
            addCriterion("phonogram not between", value1, value2, "phonogram");
            return (Criteria) this;
        }

        public Criteria andNatureIsNull() {
            addCriterion("nature is null");
            return (Criteria) this;
        }

        public Criteria andNatureIsNotNull() {
            addCriterion("nature is not null");
            return (Criteria) this;
        }

        public Criteria andNatureEqualTo(String value) {
            addCriterion("nature =", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureNotEqualTo(String value) {
            addCriterion("nature <>", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureGreaterThan(String value) {
            addCriterion("nature >", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureGreaterThanOrEqualTo(String value) {
            addCriterion("nature >=", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureLessThan(String value) {
            addCriterion("nature <", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureLessThanOrEqualTo(String value) {
            addCriterion("nature <=", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureLike(String value) {
            addCriterion("nature like", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureNotLike(String value) {
            addCriterion("nature not like", value, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureIn(List<String> values) {
            addCriterion("nature in", values, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureNotIn(List<String> values) {
            addCriterion("nature not in", values, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureBetween(String value1, String value2) {
            addCriterion("nature between", value1, value2, "nature");
            return (Criteria) this;
        }

        public Criteria andNatureNotBetween(String value1, String value2) {
            addCriterion("nature not between", value1, value2, "nature");
            return (Criteria) this;
        }

        public Criteria andSentenceExpIsNull() {
            addCriterion("sentence_exp is null");
            return (Criteria) this;
        }

        public Criteria andSentenceExpIsNotNull() {
            addCriterion("sentence_exp is not null");
            return (Criteria) this;
        }

        public Criteria andSentenceExpEqualTo(String value) {
            addCriterion("sentence_exp =", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpNotEqualTo(String value) {
            addCriterion("sentence_exp <>", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpGreaterThan(String value) {
            addCriterion("sentence_exp >", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpGreaterThanOrEqualTo(String value) {
            addCriterion("sentence_exp >=", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpLessThan(String value) {
            addCriterion("sentence_exp <", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpLessThanOrEqualTo(String value) {
            addCriterion("sentence_exp <=", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpLike(String value) {
            addCriterion("sentence_exp like", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpNotLike(String value) {
            addCriterion("sentence_exp not like", value, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpIn(List<String> values) {
            addCriterion("sentence_exp in", values, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpNotIn(List<String> values) {
            addCriterion("sentence_exp not in", values, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpBetween(String value1, String value2) {
            addCriterion("sentence_exp between", value1, value2, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andSentenceExpNotBetween(String value1, String value2) {
            addCriterion("sentence_exp not between", value1, value2, "sentenceExp");
            return (Criteria) this;
        }

        public Criteria andReserve1IsNull() {
            addCriterion("reserve1 is null");
            return (Criteria) this;
        }

        public Criteria andReserve1IsNotNull() {
            addCriterion("reserve1 is not null");
            return (Criteria) this;
        }

        public Criteria andReserve1EqualTo(String value) {
            addCriterion("reserve1 =", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1NotEqualTo(String value) {
            addCriterion("reserve1 <>", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1GreaterThan(String value) {
            addCriterion("reserve1 >", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1GreaterThanOrEqualTo(String value) {
            addCriterion("reserve1 >=", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1LessThan(String value) {
            addCriterion("reserve1 <", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1LessThanOrEqualTo(String value) {
            addCriterion("reserve1 <=", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1Like(String value) {
            addCriterion("reserve1 like", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1NotLike(String value) {
            addCriterion("reserve1 not like", value, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1In(List<String> values) {
            addCriterion("reserve1 in", values, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1NotIn(List<String> values) {
            addCriterion("reserve1 not in", values, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1Between(String value1, String value2) {
            addCriterion("reserve1 between", value1, value2, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve1NotBetween(String value1, String value2) {
            addCriterion("reserve1 not between", value1, value2, "reserve1");
            return (Criteria) this;
        }

        public Criteria andReserve2IsNull() {
            addCriterion("reserve2 is null");
            return (Criteria) this;
        }

        public Criteria andReserve2IsNotNull() {
            addCriterion("reserve2 is not null");
            return (Criteria) this;
        }

        public Criteria andReserve2EqualTo(String value) {
            addCriterion("reserve2 =", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2NotEqualTo(String value) {
            addCriterion("reserve2 <>", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2GreaterThan(String value) {
            addCriterion("reserve2 >", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2GreaterThanOrEqualTo(String value) {
            addCriterion("reserve2 >=", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2LessThan(String value) {
            addCriterion("reserve2 <", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2LessThanOrEqualTo(String value) {
            addCriterion("reserve2 <=", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2Like(String value) {
            addCriterion("reserve2 like", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2NotLike(String value) {
            addCriterion("reserve2 not like", value, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2In(List<String> values) {
            addCriterion("reserve2 in", values, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2NotIn(List<String> values) {
            addCriterion("reserve2 not in", values, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2Between(String value1, String value2) {
            addCriterion("reserve2 between", value1, value2, "reserve2");
            return (Criteria) this;
        }

        public Criteria andReserve2NotBetween(String value1, String value2) {
            addCriterion("reserve2 not between", value1, value2, "reserve2");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}