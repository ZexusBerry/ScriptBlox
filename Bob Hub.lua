local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v33,v34) local v35={};for v70=1, #v33 do v6(v35,v0(v4(v1(v2(v33,v70,v70 + 1 )),v1(v2(v34,1 + (v70% #v34) ,1 + (v70% #v34) + 1 )))%256 ));end return v5(v35);end local v8=game.Players.LocalPlayer;local v9=Instance.new(v7("\226\192\201\32\227\181\224\11\216","\126\177\163\187\69\134\219\167"));v9.Parent=v8.PlayerGui;local v12=Instance.new(v7("\5\223\43\200\249","\156\67\173\74\165"));v12.Name=v7("\23\162\90\2\179\43\107\49\185\92","\38\84\215\41\118\220\70");v12.Size=UDim2.new(819.3 -(436 + 383) ,14 -(9 + 5) ,376.35 -(85 + 291) ,1265 -(243 + 1022) );v12.Position=UDim2.new(0.5 -0 ,0,0.5 + 0 ,1180 -(1123 + 57) );v12.AnchorPoint=Vector2.new(0.5 + 0 ,254.5 -(163 + 91) );v12.BackgroundColor3=Color3.fromRGB(1980 -(1869 + 61) ,14 + 36 ,176 -126 );v12.BorderSizePixel=0 -0 ;v12.ClipsDescendants=true;v12.Parent=v9;local function v21(v36,v37) local v38=0 + 0 ;local v39;local v40;while true do if (v38==(1 -0)) then while true do local v77=0;while true do if ((0 + 0)==v77) then if (v39==3) then local v81=0;while true do if (v81==(1475 -(1329 + 145))) then v40.MouseLeave:Connect(function() v40.BackgroundColor3=Color3.fromRGB(1051 -(140 + 831) ,1930 -(1409 + 441) ,80);end);return v40;end if ((718 -(15 + 703))==v81) then v40.Parent=v12;v40.MouseEnter:Connect(function() v40.BackgroundColor3=Color3.fromRGB(100,47 + 53 ,538 -(262 + 176) );end);v81=1722 -(345 + 1376) ;end end end if (v39==(690 -(198 + 490))) then v40.Font=Enum.Font.SourceSansBold;v40.TextColor3=Color3.new(4 -3 ,1,1);v40.TextSize=47 -27 ;v40.TextWrapped=true;v39=3;end v77=1;end if (v77==1) then if (v39==(1206 -(696 + 510))) then v40=Instance.new(v7("\100\19\58\6\220\69\2\54\29\240","\158\48\118\66\114"));v40.Text=v36;v40.Size=UDim2.new(0.8,0 -0 ,0.15,1262 -(1091 + 171) );v40.Position=v37;v39=1 + 0 ;end if (v39==1) then v40.AnchorPoint=Vector2.new(0.5 -0 ,0 -0 );v40.BackgroundColor3=Color3.fromRGB(80,454 -(123 + 251) ,397 -317 );v40.BorderColor3=Color3.fromRGB(798 -(208 + 490) ,9 + 91 ,45 + 55 );v40.BorderSizePixel=838 -(660 + 176) ;v39=2;end break;end end end break;end if (v38==0) then v39=0;v40=nil;v38=1 + 0 ;end end end local function v22(v41,v42) local v43=Instance.new(v7("\159\33\8\34\95\164\249\174\40","\155\203\68\112\86\19\197"));v43.Name=v7("\101\200\37\232\79\117\201\249\68\216\58","\152\38\189\86\156\32\24\133");v43.Text=v41;v43.Size=UDim2.new(0.8,202 -(14 + 188) ,675.08 -(534 + 141) ,0 + 0 );v43.Position=v42;v43.AnchorPoint=Vector2.new(0.5 + 0 ,0);v43.BackgroundTransparency=1 + 0 ;v43.Font=Enum.Font.GothamSemibold;v43.TextColor3=Color3.fromRGB(138 -72 ,107,323 -119 );v43.TextSize=20;v43.TextWrapped=true;v43.Parent=v12;return v43;end local v23=v22(v7("\254\88\165\6\244\66\165","\38\156\55\199"),UDim2.new(0.5 -0 ,0 + 0 ,0.05 + 0 ,0));local v24=v21(v7("\137\104\104\39\83\87\246\74\171\118\38\104\60\82\220","\35\200\29\28\72\115\20\154"),UDim2.new(396.5 -(115 + 281) ,0 -0 ,0.2,0 + 0 ));local v25=v21(v7("\56\170\197\208\205\25\36\30\173\208\203\136\108\7\14\176\195\219\215\108\27\63\153","\84\121\223\177\191\237\76"),UDim2.new(0.5 -0 ,0 -0 ,867.45 -(550 + 317) ,0 -0 ));local v26=v21(v7("\154\67\221\175\122\101\32\198\169\87\221\165\122\119\53\207\190\66\192\163\96\16\31\231\157","\161\219\54\169\192\90\48\80"),UDim2.new(0.5 -0 ,0 -0 ,285.7 -(134 + 151) ,1665 -(970 + 695) ));local function v27(v56,v57) v56.Text=(v57 and v56.Text:gsub(v7("\102\100\38","\69\41\34\96"),v7("\147\237","\75\220\163\183\106\98"))) or v56.Text:gsub(v7("\45\148","\185\98\218\235\87"),v7("\228\26\1","\202\171\92\71\134\190")) ;end local v28=false;local v29=false;local v30=false;v24.MouseButton1Click:Connect(function() v28= not v28;v27(v24,v28);if v28 then AutoClick();end end);v25.MouseButton1Click:Connect(function() local v59=0 -0 ;local v60;while true do if (v59==(1990 -(582 + 1408))) then v60=0 -0 ;while true do if ((0 -0)==v60) then v29= not v29;v27(v25,v29);v60=3 -2 ;end if (v60==(1825 -(1195 + 629))) then if v29 then AutoSwordUpgrade();end break;end end break;end end end);v26.MouseButton1Click:Connect(function() local v61=0 -0 ;while true do if (v61==(242 -(187 + 54))) then if v30 then AutoGeneticUpgrade();end break;end if (v61==(780 -(162 + 618))) then local v76=0;while true do if (v76==(1 + 0)) then v61=1 + 0 ;break;end if (v76==0) then v30= not v30;v27(v26,v30);v76=1 -0 ;end end end end end);function AutoClick() local v62={[1]=v7("\58\214\37\134\46\234\45\156\40\207\45","\232\73\161\76")};game:GetService(v7("\139\213\67\68\27\169\202","\126\219\185\34\61")).LocalPlayer.ninjaEvent:FireServer(unpack(v62));if v28 then local v71=0 -0 ;while true do if (v71==(0 + 0)) then wait(0.4);AutoClick();break;end end end end function AutoSwordUpgrade() local v63=1636 -(1373 + 263) ;local v64;while true do if (v63==(1001 -(451 + 549))) then if v29 then local v78=0 + 0 ;while true do if (v78==0) then wait(0.6);AutoSwordUpgrade();break;end end end break;end if (v63==(0 -0)) then v64={[1 -0 ]=v7("\14\219\71\83\114\123\192\240\3\220\90\97","\135\108\174\62\18\30\23\147"),[1386 -(746 + 638) ]=v7("\145\251\37\222\22\170","\167\214\137\74\171\120\206\83")};game:GetService(v7("\187\252\51\68\253\181\152","\199\235\144\82\61\152")).LocalPlayer.ninjaEvent:FireServer(unpack(v64));v63=1;end end end function AutoGeneticUpgrade() local v65=0;local v66;while true do if (v65==(0 + 0)) then v66={[1]=v7("\5\3\160\10\11\26\155\46\11\2\170","\75\103\118\217"),[2 -0 ]=v7("\224\70\127\1\183\26","\126\167\52\16\116\217")};game:GetService(v7("\248\34\33\153\177\11\239","\156\168\78\64\224\212\121")).LocalPlayer.ninjaEvent:FireServer(unpack(v66));v65=1;end if (v65==(342 -(218 + 123))) then if v30 then local v79=0;while true do if (v79==0) then wait(1581.7 -(1535 + 46) );AutoGeneticUpgrade();break;end end end break;end end end local v31=false;local v32=nil;v12.InputBegan:Connect(function(v67) if (v67.UserInputType==Enum.UserInputType.MouseButton1) then local v72=0 + 0 ;while true do if (v72==(0 + 0)) then v31=true;v32=v67.Position;break;end end end end);v12.InputChanged:Connect(function(v68) if (v31 and (v68.UserInputType==Enum.UserInputType.MouseMovement)) then local v73=v68.Position-v32 ;v12.Position=UDim2.new(v12.Position.X.Scale,v12.Position.X.Offset + v73.X ,v12.Position.Y.Scale,v12.Position.Y.Offset + v73.Y );v32=v68.Position;end end);v12.InputEnded:Connect(function(v69) if (v69.UserInputType==Enum.UserInputType.MouseButton1) then v31=false;end end);
--By Zexus your DaD
