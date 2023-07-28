read_poland_minute_links<-function(){
  part<-xml2::read_html("https://nbp.pl/en/monetary-policy/mpc-documents/mpc-minutes/")%>%
    rvest::html_nodes("a")%>%
    rvest::html_attr("href")
  
  part<-part[grepl("mi_|voting",part)]
  
  return(part)
}
