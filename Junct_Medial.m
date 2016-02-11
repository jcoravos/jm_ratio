function [junct,medial] = Junct_Medial(Vertx,Verty,pc, image)
%Junctional and Medial calculator determines the mean pixel intensity in
%medial and junctional pixels
    for cell = 1:length(Vertx)
        if isnan(Vertx{cell}) 
            continue
        end
        total_mask = roipoly(image,Vertx{cell}./pc,Verty{cell}./pc);
        medial_mask = imerode(total_mask,strel('square',4));
        junctional_mask = total_mask - medial_mask;
        
        medial_pixels = medial_mask.*image;
        ind = find(medial_pixels ~= 0);
        medial(cell) = mean(medial_pixels(ind));
        junctional_pixels = junctional_mask.*image;
        ind = find(junctional_pixels ~= 0);
        junct(cell) = mean(junctional_pixels(ind));
        
        disp(cell)
    end