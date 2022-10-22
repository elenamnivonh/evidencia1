

%--------Filtro de datos----------------%

%Selecionamos solo las columnas que necesitamos para hacer el analisis

Filtroba= buenosaireslimpia(:,[31,32,35,36,37,38,40,41,42,43,50,52,56]);
Filtroba1 = fillmissing(Filtroba,'movmean', 2000,'DataVariables',{'latitude','longitude','accommodates','bathrooms','bedrooms','beds','price','minimum_nights','maximum_nights','number_of_reviews','review_scores_checkin','review_scores_location','reviews_per_month'});


%------Correlaciones--------%

Matriz=table2array(Filtroba1); 
Mat_Corr = corrcoef(Matriz);

%Mapa de calor
figure(1)
h = heatmap(Mat_Corr)