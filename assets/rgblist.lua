rgblist = {{168, 81, 40}, {0, 88, 0}, {100, 163, 12}, {112, 186, 14}, {90, 147, 11}, {136, 57, 18}, {187, 103, 34}, {205, 129, 60}, {208, 208, 208}, {80, 130, 10}, {188, 188, 188}, {208, 208, 208}, {164, 164, 164},
{0, 148, 0}, {0, 153, 0}, {0, 148, 0}, {0, 168, 0}, {0, 153, 0}, {140, 140, 140}, {214, 129, 96}, {252, 188, 176}, {179, 120, 107}, {170, 101, 73}, {163, 163, 163}, {218, 218, 218}, {155, 155, 155},
{71, 151, 8}, {29, 138, 3}, {142, 86, 63}, {7, 105, 0}, {0, 84, 89}, {29, 125, 127}, {252, 188, 176}, {214, 129, 96}, {170, 170, 170}, {69, 94, 240}, {221, 72, 38}, {89, 197, 252}, {228, 228, 228},
{91, 184, 11}, {32, 166, 4}, {252, 252, 252}, {159, 220, 143}, {236, 118, 62}, {53, 122, 120}, {21, 122, 122}, {152, 88, 41}, {106, 172, 13}, {242, 68, 142}, {241, 241, 241}, {252, 217, 184}, {181, 181, 181},
{158, 73, 32}, {241, 184, 168}, {131, 49, 7}, {131, 209, 23}, {78, 168, 9}, {93, 190, 11}, {89, 188, 11}, {87, 141, 10}, {99, 161, 12}, {44, 145, 49}, {237, 237, 237}, {231, 231, 231}, {32, 56, 236},
{65, 24, 3}, {16, 6, 0}, {65, 24, 3}, {181, 68, 10}, {29, 153, 3}, {29, 170, 3}, {68, 181, 8}, {182, 103, 70}, {146, 109, 102}, {26, 166, 5}, {192, 38, 140}, {128, 56, 188}, {0, 0, 0},
{185, 185, 185}, {0, 0, 0}, {158, 71, 28}, {104, 170, 13}, {108, 180, 13}, {106, 172, 13}, {196, 85, 26}, {207, 91, 28}, {197, 91, 29}, {179, 179, 179}, {187, 20, 126}, {96, 46, 195}, {92, 148, 252},
{198, 198, 198}, {223, 226, 227}, {178, 178, 178}, {135, 31, 3}, {237, 122, 65}, {236, 118, 62}, {235, 115, 60}, {217, 158, 145}, {178, 178, 178}, {121, 121, 121}, {163, 163, 163}, {128, 208, 16}, {216, 40, 0},
{145, 163, 171}, {173, 202, 217}, {192, 192, 192}, {151, 151, 151}, {227, 227, 227}, {233, 233, 233}, {228, 228, 228}, {220, 164, 154}, {139, 139, 139}, {116, 116, 116}, {139, 139, 139}, {252, 250, 249}, {60, 188, 252},
{223, 223, 223}, {237, 233, 232}, {212, 212, 212}, {178, 227, 178}, {181, 181, 181}, {164, 164, 164}, {207, 207, 207}, {186, 186, 186}, {252, 252, 252}, {252, 188, 176}, {178, 179, 175}, {228, 228, 228}, {198, 198, 198},
{203, 179, 174}, {225, 184, 175}, {219, 219, 219}, {174, 105, 38}, {152, 57, 9}, {152, 57, 9}, {102, 172, 115}, {38, 144, 43}, {103, 73, 66}, {132, 72, 46}, {183, 183, 183}, {189, 189, 189}, {180, 180, 180},
{92, 92, 92}, {91, 91, 91}, {103, 103, 103}, {116, 116, 116}, {71, 71, 71}, {83, 83, 83}, {190, 190, 190}, {189, 190, 190}, {93, 93, 93}, {93, 93, 93}, {124, 122, 122}, {0, 0, 0}, {0, 0, 0}}

-- 11.1

for _, c in ipairs(rgblist) do
    for i = 1, 3 do
        c[i] = c[i] / 255
    end
end