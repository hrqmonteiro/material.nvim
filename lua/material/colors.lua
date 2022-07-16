local colors = {}

if vim.o.background == 'dark' then
  colors = {
    materialNone = 'NONE',
    materialFront = '#B2C2B0',
    materialBack = '#002626',

    materialTabCurrent = '#1E1E1E',
    materialTabOther = '#2D2D2D',
    materialTabOutside = '#252526',

    materialLeftDark = '#252526',
    materialLeftMid = '#373737',
    materialLeftLight = '#636369',

    materialPopupFront = '#BBBBBB',
    materialPopupBack = '#272727',
    materialPopupHighlightBlue = '#004b72',
    materialPopupHighlightGray = '#343B41',

    materialSplitLight = '#898989',
    materialSplitDark = '#444444',
    materialSplitThumb = '#424242',

    materialCursorDarkDark = '#222222',
    materialCursorDark = '#51504F',
    materialCursorLight = '#AEAFAD',
    materialSelection = '#264F78',
    materialLineNumber = '#5A5A5A',

    materialDiffRedDark = '#4B1818',
    materialDiffRedLight = '#6F1313',
    materialDiffRedLightLight = '#FB0101',
    materialDiffGreenDark = '#373D29',
    materialDiffGreenLight = '#4B5632',
    materialSearchCurrent = '#515c6a',
    materialSearch = '#613315',

    materialContext = '#404040',
    materialContextCurrent = '#707070',

    materialFoldBackground = '#202d39',

    -- Syntax colors
    materialGray = '#808080',
    materialViolet = '#646695',
    materialBlue = '#569CD6',
    materialDarkBlue = '#223E55',
    materialMediumBlue = '#18a2fe',
    materialLightBlue = '#9CDCFE',
    materialGreen = '#6A9955',
    materialBlueGreen = '#4EC9B0',
    materialLightGreen = '#B5CEA8',
    materialRed = '#F44747',
    materialOrange = '#CE9178',
    materialLightRed = '#D16969',
    materialYellowOrange = '#D7BA7D',
    materialYellow = '#DCDCAA',
    materialPink = '#C586C0',
  }
end

return colors
