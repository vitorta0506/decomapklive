.class final Lf2/b;
.super Lc2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf2/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lc2/v;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lf2/a;

    invoke-direct {v1, v0}, Lf2/a;-><init>(Lc2/v;)V

    new-instance v2, Lf2/b$b;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lf2/b$b;-><init>(Lc2/v;ILf2/b$a;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lc2/v;->f()J

    move-result-wide v3

    iget-wide v7, v0, Lc2/v;->j:J

    .line 3
    invoke-virtual/range {p1 .. p1}, Lc2/v;->d()J

    move-result-wide v13

    iget v0, v0, Lc2/v;->c:I

    const/4 v5, 0x6

    .line 4
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 5
    invoke-direct/range {v0 .. v15}, Lc2/a;-><init>(Lc2/a$d;Lc2/a$f;JJJJJJI)V

    return-void
.end method
