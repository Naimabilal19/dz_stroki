--1
declare @text nvarchar(50) = 'Нажал кабан на баклажан'
declare @text1 nvarchar(50)= 'Нажал кабан на баклажан'

if reverse(@text) = reverse(@text1)
	begin
		select 'Stroki polindrom' as 'Check'
	end
else 
	begin
		select 'ne polindrom'as 'Check'
	end

--2
declare @text2 nvarchar(50) = 'Сколько раз слово слово содержится в этой строке'
declare @text3 nvarchar(50)='слово'

declare @count int =0
declare @startindex int =1

while @startindex >0
begin
	set @startindex = charindex(@text3, @text2, @startindex)
	if @startindex >0
	begin
		set @count =@count+1
		set @startindex =@startindex+1
	end
end

select @count as ИскомоеСлово 

--3
declare @str nvarchar(50) = 'buy ViaGra now XxX'
if lower(@str) like '%viagra%' or lower(@str) like 'xxx'
begin 
	print 'это спам'
end
	else
begin
	print 'это не спам'
end
