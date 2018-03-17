// let School = function() {};
// School.prototype.gradeSchool = function() {
//   let fullRoster = {};
//   function School(grade, name) {
//     this.grade = grade;
//     this.name = name;
//   }

//   function roster() {
//     return fullRoster;
//   }
// };

module.exports = function() {
  var db = {};
  return {
    add: function(name, grade) {
      db[grade] ? db[grade].push(name) : (db[grade] = [name]);
      db[grade].sort();
    },
    grade: function(grade) {
      return db[grade] ? JSON.parse(JSON.stringify(db[grade])) : [];
    },
    roster: function() {
      return JSON.parse(JSON.stringify(db));
    }
  };
};
