/* Header for module plot, generated by p2c */
#ifndef PLOT_H
#define PLOT_H



#ifndef NEWASM_H
#include <p2c/newasm.h>
#endif



#ifdef PLOT_G
# define vextern
#else
# define vextern extern
#endif



#define plot_numscreenpens 8
/* p2c: Note: Character >= 128 encountered (from plot.imp, line 43) */



/*unused*/

typedef int32_t plot_coordarray[100000L];

typedef struct plot_namerec {
    Char s[9];
    short num;
    struct plot_namerec *next;
} plot_namerec;

typedef struct plot_fontrec {
    uchar num, height, attr;
    short arr[256];
    struct plot_fontrec *next;
} plot_fontrec;

typedef enum {
    plot_act_init, plot_act_finish, plot_act_clip, plot_act_raise,
    plot_act_lower, plot_act_view, plot_act_quality, plot_act_fast,
    plot_act_move, plot_act_draw, plot_act_ellipse, plot_act_color,
    plot_act_style, plot_act_pattern, plot_act_text, plot_act_box,
    plot_act_polygon
} plot_devaction;

typedef struct plot_devrec {
    plot_devaction act;
    int32_t x1, y1, x2, y2;
    na_quadword q1, q2, q3;
} plot_devrec;



vextern plot_fontrec *plot_fontbase;
vextern plot_namerec *plot_namebase;
vextern int32_t plot_lastchar, plot_bx1, plot_bx2, plot_by1, plot_by2;
vextern int32_t plot_screenpen[plot_numscreenpens];



extern Void plot_p1p2 PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_init PP((int32_t addr, int sizecode));
extern Void plot_initscreen PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_warminitscreen PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_initgen PP((Char *fn));
extern Void plot_initfile PP((FILE **f, int sizecode, int hascircles));
extern Void plot_initps PP((FILE **f));
extern Void plot_initff PP((FILE **f));
extern Void plot_init_fast PV();
extern Void plot_initscreen_fast PV();
extern Void plot_initgen_fast PP((Char *fn));
extern Void plot_initfile_fast PP((Char *fn));
extern Void plot_initps_fast PP((Char *fn));
extern Void plot_inituser PP((_PROCEDURE devproc));
extern Void plot_window PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_nrwindow PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_pwindow PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_lwindow PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_getwindow PP((int32_t *x1, int32_t *y1, int32_t *x2, int32_t *y2));
extern Void plot_figtitle PP((Char *title));
extern Void plot_out PP((Char *s));
extern Void plot_headerfile PP((Char * fn, boolean incflag));
extern Void plot_initfonts PP((void));

/*no int32_ter supported*/
extern Void plot_in PP((Char *s));

/*no int32_ter supported*/
extern Void plot_lift PV();
extern Void plot_view PV();
extern Void plot_finish PV();
extern Void plot_quality PV();
extern Void plot_fast PV();
extern Void plot_velocity PP((double vel));
extern Void plot_color PP((int32_t c));
extern Void plot_prepare PV();
extern Void plot_clip PV();
extern Void plot_noclip PV();
extern int32_t plot_cm PP((double cm));
extern Void plot_xform PP((int32_t x, int32_t y, int32_t *xx, int32_t *yy));
extern Void plot_rxform PP((double x, double y, int32_t *xx, int32_t *yy));
extern Void plot_unxform PP((int32_t xx, int32_t yy, int32_t *x, int32_t *y));
extern Void plot_relxform PP((int32_t x, int32_t y, int32_t *xx, int32_t *yy));
extern Void plot_rrelxform PP((double x, double y, int32_t *xx, int32_t *yy));
extern Void plot_relunxform PP((int32_t xx, int32_t yy, int32_t *x, int32_t *y));
extern Void plot_linestyle PP((int32_t num));
extern Void plot_linewidth PP((double num));
extern Void plot_move PP((int32_t x, int32_t y));
extern Void plot_draw PP((int32_t x, int32_t y));
extern Void plot_rmove PP((double x, double y));
extern Void plot_rdraw PP((double x, double y));
extern Void plot_moverel PP((int32_t dx, int32_t dy));
extern Void plot_drawrel PP((int32_t dx, int32_t dy));
extern Void plot_line PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2));
extern Void plot_box PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2, int32_t pat));
extern Void plot_circle PP((int32_t x1, int32_t y1, int32_t r, int32_t pat));
extern Void plot_rellipse PP((int32_t x1, int32_t y1, double rx, double ry,
			      int32_t pat));
extern Void plot_rrellipse PP((double x1, double y1, double rx, double ry,
			       int32_t pat));
extern Void plot_bezier PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2, int32_t x3,
			    int32_t y3, int32_t x4, int32_t y4, int32_t epsilon));
extern Void plot_rbezier PP((double x1, double y1, double x2, double y2,
			     double x3, double y3, double x4, double y4,
			     int32_t epsilon));
extern Void plot_polygon PP((int32_t n, int32_t *x, int32_t *y, int32_t pat));
extern Void plot_roundbox PP((int32_t x1, int32_t y1, int32_t x2, int32_t y2, int32_t rx,
			      int32_t ry, int32_t pat));
extern Void plot_rroundbox PP((double x1, double y1, double x2, double y2,
			       double rx, double ry, int32_t pat));
extern Void plot_readfont PP((Char *fn));
extern Void plot_readfontset PP((Char *fn, int32_t *which));
extern Void plot_morefontset PP((Char *fn, int32_t *which));
extern Void plot_initfonts PV();
extern Void plot_fontfile PP((Char *fn));
extern Void plot_loadfonts PP((int32_t *which));
extern Void plot_ctrlchars PP((Char *pref, Char *chrs));
extern Void plot_selfont PP((int32_t num));
extern int32_t plot_height PV();
extern Void plot_charsize PP((int32_t num, int32_t den, int32_t scale));
extern Void plot_charscale PP((int32_t scale));
extern Void plot_charorient PP((double theta, int mirrorx));
extern Void plot_charaspect PP((int32_t horiz, int32_t vert, int32_t den));
extern int32_t plot_charnum PP((int ch));
extern int32_t plot_charname PP((Char *s));
extern Void plot_ssoffset PP((int32_t sub, int32_t sup, int32_t den));
extern Void plot_char PP((int32_t x, int32_t y, int32_t num));
extern Void plot_string PP((int32_t x, int32_t y, Char *s));
extern Void plot_rightstring PP((int32_t x, int32_t y, Char *s));
extern Void plot_centerstring PP((int32_t x, int32_t y, Char *s));
extern Void plot_genstring PP((int32_t x, int32_t y, Char *orient, Char *s));
extern Void plot_stringrel PP((Char *s));
extern int32_t plot_stringwidth PP((Char *s));



#undef vextern

#endif /*PLOT_H*/

/* End. */

