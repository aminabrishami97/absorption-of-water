function DFS(i,j)
global n;
global Color;
global PlaneMatrix;  
global Open;
        Color(i,j)=1;
        if (i-1)>0
            if PlaneMatrix(i-1,j)==40
                if Color(i-1,j)==0
                    DFS(i-1,j);
                    Open=Open+1;
                    
                end
            end
        end
        if (i+1)<=n
            if PlaneMatrix(i+1,j)==40
                if Color(i+1,j)==0
                    DFS(i+1,j);
                    Open=Open+1;
                end
            end
        end
        if (j+1)<=n
            if PlaneMatrix(i,j+1)==40
                if Color(i,j+1)==0
                    DFS(i,j+1);
                    Open=Open+1;
                end
            end
        end
        if (j-1)>0
            if PlaneMatrix(i,j-1)==40
                if Color(i,j-1)==0
                    DFS(i,j-1);
                    Open=Open+1;
                end
            end
        end

end