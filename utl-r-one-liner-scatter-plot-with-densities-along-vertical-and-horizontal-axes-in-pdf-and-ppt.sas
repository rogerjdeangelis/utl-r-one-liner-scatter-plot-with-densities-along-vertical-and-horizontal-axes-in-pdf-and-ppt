%let pgm=utl-r-one-liner-scatter-plot-with-densities-along-vertical-and-horizontal-axes-in-pdf-and-ppt;

R one liner scatter plot with densities along vertical and horizontal axes in pdf and ppt

https://www.dropbox.com/s/gwssaa7lvo7t79b/hismargin.pdf?dl=0
https://www.dropbox.com/s/pedig5f78wab7n6/hismargin.ppt?dl=0

pdf plot
https://tinyurl.com/yc7f7bxp
https://github.com/rogerjdeangelis/utl-r-one-liner-scatter-plot-with-densities-along-vertical-and-horizontal-axes-in-pdf-and-ppt/blob/main/hismargin.pdf

ppt plot
https://tinyurl.com/2xmm4sap
https://github.com/rogerjdeangelis/utl-r-one-liner-scatter-plot-with-densities-along-vertical-and-horizontal-axes-in-pdf-and-ppt/blob/main/hismargin.ppt

github
https://tinyurl.com/wb85yf68
https://github.com/rogerjdeangelis/utl-r-one-liner-scatter-plot-with-densities-along-vertical-and-horizontal-axes-in-pdf-and-ppt

  Topics
    1  scatter-plot-with-densities
    2  add themes to ppt
    3  related repos
/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/********************************************************************************************************************************************************/
/*                       |                               |                                                                                              */
/*                       |                               |                                                                                              */
/*    INPUT              |      PROCESS                  |                                                                                              */
/*                       |                               |    --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+---                                    */
/* data sd1.have;        | %utl_submit_r64x('            |  Y |                                                    |                                    */
/*  do x=2 to 256 by 2;  | library(psych);               |    |                                                 *  | **                                 */
/*    do y=2 to x by 2;  | library(haven);               | 56 +                                                **  + *****                              */
/*      output;          | have<-read_sas(               | 40 +                                             *****  + ******                             */
/*    end;               | "d:/sd1/have.sas7bdat");      | 24 +                                          ********  + ********                           */
/*  end;                 | pdf("d:/pdf/hismargin.pdf",5);| 08 +                                       ***********  + *********                          */
/* run;quit;             | with(have,scatter.hist(Y,X)); | 92 +                                    **************  + ***********                        */
/*                       | dev.off() ;                   | 76 +                                 *****************  + ************                       */
/* You need the free     | ');                           | 60 +                              ********************  + **************                     */
/* BOXOFT pdf_to_ppt     |                               | 44 +                           ***********************  + ***************                    */
/* product to create     | x "d:\exe\p2p\pdftopptcmd.exe | 28 +                        **************************  + *****************                  */
/* the PPTs              |   d:\pdf\hismargin.pdf        | 12 +                     *****************************  + *******************                */
/* from the PDFs         |   d:\ppt\hismargin.ppt";      | 96 +                  ********************************  + ********************               */
/*                       |                               | 80 +               ***********************************  + **********************             */
/* go to                 |                               | 64 +            **************************************  + ***********************            */
/* boxoft.com/pdf-to-ppt/|                               | 48 +         *****************************************  + *************************          */
/*                       |                               | 32 +      ********************************************  + **************************         */
/* I downloaded          |                               | 16 +   ***********************************************  + ****************************       */
/* into d:\exe\p2p       |                               |  0 + *************************************************  + ******************************     */
/*                       |                               |    |                                                    | *******************************    */
/*                       |                               |    --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--- ---------------------------------  */
/*                       |                               |      0  1  3  4  6  8  9  1  1  1  1  1  1  2  2  2  2                  11111111111122222222 */
/*                       |                               |         6  2  8  4  0  6  1  2  4  6  7  9  0  2  4  5       1234456788901223456678900123445 */
/*                       |                               |                           2  8  4  0  6  2  8  4  0  6     086420864208642086420864208642086 */
/*                       |                               |                                                                                              */
/*                       |                               |      *************************************************                                       */
/*                       |                               |        ***********************************************                                       */
/*                       |                               |           ********************************************                                       */
/*                       |                               |              *****************************************                                       */
/*                       |                               |                 **************************************                                       */
/*                       |                               |                    ***********************************                                       */
/*                       |                               |                       ********************************                                       */
/*                       |                               |                          *****************************                                       */
/*                       |                               |                             **************************                                       */
/*                       |                               |                                ***********************                                       */
/*                       |                               |                                   ********************                                       */
/*                       |                               |                                      *****************                                       */
/*                       |                               |                                         **************                                       */
/*                       |                               |                                            ***********                                       */
/*                       |                               |                                               ********                                       */
/*                       |                               |                                                  *****                                       */
/*                       |                               |                                                     **                                       */
/*                       |                               |                                                      *                                       */
/*                       |                               |                                                                                              */
/*                       |                               |                                                                                              */
/*                       |                               |                                                                                              */
/*                       |                               |                                                                                              */
/*                       |                               |                                                                                              */
/*                       |                               |                                                                                              */
/*                       |                               |                                                                                              */
/********************************************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

data sd1.have;
  do x=2 to 256 by 2;
    do y=2 to x by 2;
      output;
    end;
  end;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  SD1.HAVE total obs=8,256 23MAR2024:15:14:25                                                                           */
/*                                                                                                                        */
/*     Obs     X     Y                                                                                                    */
/*                                                                                                                        */
/*       1     2      2                                                                                                   */
/*       2     4      2                                                                                                   */
/*       3     4      4                                                                                                   */
/*       4     6      2                                                                                                   */
/*   ...                                                                                                                  */
/*   8253    256    250                                                                                                   */
/*   8254    256    252                                                                                                   */
/*   8255    256    254                                                                                                   */
/*   8256    256    256                                                                                                   */
/*                                                                                                                        */
/**************************************************************************************************************************/

 /*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/


%utlfkil(d:/pdf/hismargin.pdf);
%utlfkil(d:/ppt/hismargin.ppt);

%utl_submit_r64x('
library(psych);
library(haven);
have<-read_sas(
"d:/sd1/have.sas7bdat");
pdf("d:/pdf/hismargin.pdf",5);
with(have,scatter.hist(Y,X));
dev.off() ;
');

x "d:\exe\p2p\pdftopptcmd.exe d:\pdf\hismargin.pdf d:\ppt\hismargin.ppt";

/********************************************************************************************************************************************************/
/*                                                                                                                                                      */
/*                          X                                                                                                                           */
/*                                                                                                                                                      */
/*    --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+---                                                                                            */
/*  Y |                                                    |                                                                                            */
/*    |                                                 *  | **                                                                                         */
/* 56 +                                                **  + *****                                                                                      */
/* 40 +                                             *****  + ******                                                                                     */
/* 24 +                                          ********  + ********                                                                                   */
/* 08 +                                       ***********  + *********                                                                                  */
/* 92 +                                    **************  + ***********                                                                                */
/* 76 +                                 *****************  + ************                                                                               */
/* 60 +                              ********************  + **************                                                                             */
/* 44 +                           ***********************  + ***************                                                                            */
/* 28 +                        **************************  + *****************                                                                          */
/* 12 +                     *****************************  + *******************                                                                        */
/* 96 +                  ********************************  + ********************                                                                       */
/* 80 +               ***********************************  + **********************                                                                     */
/* 64 +            **************************************  + ***********************                                                                    */
/* 48 +         *****************************************  + *************************                                                                  */
/* 32 +      ********************************************  + **************************                                                                 */
/* 16 +   ***********************************************  + ****************************                                                               */
/*  0 + *************************************************  + ******************************                                                             */
/*    |                                                    | *******************************                                                            */
/*    --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--- ---------------------------------                                                          */
/*      0  1  3  4  6  8  9  1  1  1  1  1  1  2  2  2  2                  11111111111122222222                                                         */
/*         6  2  8  4  0  6  1  2  4  6  7  9  0  2  4  5       1234456788901223456678900123445                                                         */
/*                           2  8  4  0  6  2  8  4  0  6     086420864208642086420864208642086                                                         */
/*                                                                                                                                                      */
/*      *************************************************                                                                                               */
/*        ***********************************************                                                                                               */
/*           ********************************************                                                                                               */
/*              *****************************************                                                                                               */
/*                 **************************************                                                                                               */
/*                    ***********************************                                                                                               */
/*                       ********************************                                                                                               */
/*                          *****************************                                                                                               */
/*                             **************************                                                                                               */
/*                                ***********************                                                                                               */
/*                                   ********************                                                                                               */
/*                                      *****************                                                                                               */
/*                                         **************                                                                                               */
/*                                            ***********                                                                                               */
/*                                               ********                                                                                               */
/*                                                  *****                                                                                               */
/*                                                     **                                                                                               */
/*                                                      *                                                                                               */
/*                                                                                                                                                      */
/********************************************************************************************************************************************************/

/*         _     _               _     _   _
  __ _  __| | __| |  _ __  _ __ | |_  | |_| |__   ___ _ __ ___   ___
 / _` |/ _` |/ _` | | `_ \| `_ \| __| | __| `_ \ / _ \ `_ ` _ \ / _ \
| (_| | (_| | (_| | | |_) | |_) | |_  | |_| | | |  __/ | | | | |  __/
 \__,_|\__,_|\__,_| | .__/| .__/ \__|  \__|_| |_|\___|_| |_| |_|\___|
                    |_|   |_|
*/

Win 7 32 bit Powerpoint 2010

Once you have created your slides using ODS PDF and converted them to
a ppt using the free BOXOFT PDF2PPT, you probably want to
add a powerpoint theme. Make sure you used a SAS template that
provides whitespace for the banner and slide number footnote.

If you have a company custom template click on it and
select all the slides, shift first slide then last slide,
Then go to design tab then background slides then apply.
All slides will now have then them behind the SAS foreground
bitmaps.

The following VBA macro will make the SAS bitmaps transparent
and the company theme will appear on each slide.

Note SAS does not provide the ability for a them using
the template. Since SAS titles always appear at the top of a
page you can imbed an image in title1. However I wanted the
company powerpoint theme.

Thanks to the Powerpoint Expert Steve Rindsberg for
the macro below

Sub SetXparency()


Dim oSl As Slide

For Each oSl In ActivePresentation.Slides

    With oSl.Shapes(1)

        With .PictureFormat

            .TransparentBackground = msoTrue

            .TransparencyColor = RGB(255, 255, 255)

        End With

    End With

Next

End Sub

/*
 _ __ ___ _ __   ___  ___
| `__/ _ \ `_ \ / _ \/ __|
| | |  __/ |_) | (_) \__ \
|_|  \___| .__/ \___/|___/
         |_|
*/

https://github.com/rogerjdeangelis/utl_table_graph_ppt
https://github.com/rogerjdeangelis/utl-convert-pdf-to-text-using-python-and-r
https://github.com/rogerjdeangelis/utl-create-a-simple-n-percent-clinical-table-in-r-sas-wps-python-output-pdf-rtf-xlsx-html-list
https://github.com/rogerjdeangelis/utl-creating-identical-pdf-and-powerpoint-slides
https://github.com/rogerjdeangelis/utl-identical-side-by-side-text-and-graphics-in-pdf-and-powerpoint
https://github.com/rogerjdeangelis/utl-overlaying-histograms-and-scatterplots-in-powerpoint-pdf-and-jpeg
https://github.com/rogerjdeangelis/utl-putting-a-frame-around-text-in-doc-rtf-and-pdf-ods-destinations-with-and-without-layout
https://github.com/rogerjdeangelis/utl-removing-unwanted-bookmarks-in-pdf-table-of-contents-toc
https://github.com/rogerjdeangelis/utl-scraping-pdf-output-for-pdf-tables-and-lists
https://github.com/rogerjdeangelis/utl-side-by-side-proc-report-output-in-pdf-html-and-excel
https://github.com/rogerjdeangelis/utl_combine_pdf_files_and_delete_pages_from_a_pdf_pyPDF_ghostscript
https://github.com/rogerjdeangelis/utl_combining_all_pdf_files_in_a_directory
https://github.com/rogerjdeangelis/utl_convert_pdf_tables_to_SAS_WPS_datasets
https://github.com/rogerjdeangelis/utl_convert_pdf_tables_to_sas_tables
https://github.com/rogerjdeangelis/utl_dropping-down-to-R-and-converting-pdfs-to-sas-tables-and-text
https://github.com/rogerjdeangelis/utl_dropping-down-to-powershell-and-converting-doc-and-rtf-files-to-pdfs
https://github.com/rogerjdeangelis/utl_ods_pdf_and_rtf_two_different_page_titles_on_the_same_page
https://github.com/rogerjdeangelis/utl_pdf_graphics_top_40_a_sas_ods_graphics_look_at_chicago_public_schools_salaries_by_job
https://github.com/rogerjdeangelis/utl_report_does_not_show_group_variable_across_new_pages_in_rtf_and_pdf

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
