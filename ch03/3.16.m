function nd = ch3_16(mo, da, leap)
Jan = 31; Feb = Jan+28; Mar = Feb+31;
Apr = Mar+30; May = Apr+31; Jun = May+30;
Jul = Jun+31; Aug = Jul+31; Sep = Aug+30;
Oct = Sep+31; Nov = Oct+30; Dec = Nov+31;
M = [Jan Feb Mar Apr May Jun...
    Jul Aug Sep Oct Nov Dec];
if mo == 1
    nd = da;
elseif mo == 2
    nd = M(1)+da;
elseif mo > 2 && leap == 0
    nd = M(mo-1)+da;
elseif mo > 2 && leap == 1
    nd = M(mo-1)+da+1;
end
