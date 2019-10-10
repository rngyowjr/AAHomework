Array.prototype.titleize(function(names, callback)){
    let titleized = [];
    names.forEach(name => {
        titleized.push(`Mx. ${name} Jingleheimer Schmidt`)});
    callback(titleized);
};

titleize(names => {
    names.forEach(name => console.log(name));
});