.class public Lcom/twitter/sdk/android/core/models/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Lcom/twitter/sdk/android/core/models/User;

.field private E:Z

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;

.field private H:Lcom/twitter/sdk/android/core/models/d;

.field private a:Lcom/twitter/sdk/android/core/models/e;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Lcom/twitter/sdk/android/core/models/n;

.field private e:Lcom/twitter/sdk/android/core/models/n;

.field private f:Ljava/lang/Integer;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/twitter/sdk/android/core/models/k;

.field private r:Z

.field private s:Ljava/lang/Object;

.field private t:J

.field private u:Ljava/lang/String;

.field private v:Lcom/twitter/sdk/android/core/models/l;

.field private w:I

.field private x:Z

.field private y:Lcom/twitter/sdk/android/core/models/l;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/m;->i:J

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/sdk/android/core/models/l;
    .locals 43

    move-object/from16 v0, p0

    new-instance v40, Lcom/twitter/sdk/android/core/models/l;

    move-object/from16 v1, v40

    iget-object v2, v0, Lcom/twitter/sdk/android/core/models/m;->a:Lcom/twitter/sdk/android/core/models/e;

    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/m;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/models/m;->c:Ljava/lang/Object;

    iget-object v5, v0, Lcom/twitter/sdk/android/core/models/m;->d:Lcom/twitter/sdk/android/core/models/n;

    iget-object v6, v0, Lcom/twitter/sdk/android/core/models/m;->e:Lcom/twitter/sdk/android/core/models/n;

    iget-object v7, v0, Lcom/twitter/sdk/android/core/models/m;->f:Ljava/lang/Integer;

    iget-boolean v8, v0, Lcom/twitter/sdk/android/core/models/m;->g:Z

    iget-object v9, v0, Lcom/twitter/sdk/android/core/models/m;->h:Ljava/lang/String;

    iget-wide v10, v0, Lcom/twitter/sdk/android/core/models/m;->i:J

    iget-object v12, v0, Lcom/twitter/sdk/android/core/models/m;->j:Ljava/lang/String;

    iget-object v13, v0, Lcom/twitter/sdk/android/core/models/m;->k:Ljava/lang/String;

    iget-wide v14, v0, Lcom/twitter/sdk/android/core/models/m;->l:J

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->m:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v42, v2

    iget-wide v1, v0, Lcom/twitter/sdk/android/core/models/m;->n:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->o:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->p:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->q:Lcom/twitter/sdk/android/core/models/k;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lcom/twitter/sdk/android/core/models/m;->r:Z

    move/from16 v22, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->s:Ljava/lang/Object;

    move-object/from16 v23, v1

    iget-wide v1, v0, Lcom/twitter/sdk/android/core/models/m;->t:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->u:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->v:Lcom/twitter/sdk/android/core/models/l;

    move-object/from16 v27, v1

    iget v1, v0, Lcom/twitter/sdk/android/core/models/m;->w:I

    move/from16 v28, v1

    iget-boolean v1, v0, Lcom/twitter/sdk/android/core/models/m;->x:Z

    move/from16 v29, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->y:Lcom/twitter/sdk/android/core/models/l;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->z:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->A:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->B:Ljava/util/List;

    move-object/from16 v33, v1

    iget-boolean v1, v0, Lcom/twitter/sdk/android/core/models/m;->C:Z

    move/from16 v34, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->D:Lcom/twitter/sdk/android/core/models/User;

    move-object/from16 v35, v1

    iget-boolean v1, v0, Lcom/twitter/sdk/android/core/models/m;->E:Z

    move/from16 v36, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->F:Ljava/util/List;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->G:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/m;->H:Lcom/twitter/sdk/android/core/models/d;

    move-object/from16 v39, v1

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct/range {v1 .. v39}, Lcom/twitter/sdk/android/core/models/l;-><init>(Lcom/twitter/sdk/android/core/models/e;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/n;Lcom/twitter/sdk/android/core/models/n;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/k;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/models/l;IZLcom/twitter/sdk/android/core/models/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/d;)V

    return-object v40
.end method

.method public b(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/m;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->a:Lcom/twitter/sdk/android/core/models/e;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->a:Lcom/twitter/sdk/android/core/models/e;

    .line 2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->c:Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->d:Lcom/twitter/sdk/android/core/models/n;

    .line 5
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->e:Lcom/twitter/sdk/android/core/models/n;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->e:Lcom/twitter/sdk/android/core/models/n;

    .line 6
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->f:Ljava/lang/Integer;

    .line 7
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/l;->g:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/m;->g:Z

    .line 8
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->h:Ljava/lang/String;

    .line 9
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/l;->i:J

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/m;->i:J

    .line 10
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->j:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->k:Ljava/lang/String;

    .line 12
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/l;->l:J

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/m;->l:J

    .line 13
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->m:Ljava/lang/String;

    .line 14
    iget-wide v1, p1, Lcom/twitter/sdk/android/core/models/l;->n:J

    iput-wide v1, p0, Lcom/twitter/sdk/android/core/models/m;->n:J

    .line 15
    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->o:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->p:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->q:Lcom/twitter/sdk/android/core/models/k;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->q:Lcom/twitter/sdk/android/core/models/k;

    .line 18
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/l;->r:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/m;->r:Z

    .line 19
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->s:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->s:Ljava/lang/Object;

    .line 20
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/l;->t:J

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/m;->t:J

    .line 21
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->u:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->v:Lcom/twitter/sdk/android/core/models/l;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->v:Lcom/twitter/sdk/android/core/models/l;

    .line 23
    iget v0, p1, Lcom/twitter/sdk/android/core/models/l;->w:I

    iput v0, p0, Lcom/twitter/sdk/android/core/models/m;->w:I

    .line 24
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/l;->x:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/m;->x:Z

    .line 25
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->y:Lcom/twitter/sdk/android/core/models/l;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->y:Lcom/twitter/sdk/android/core/models/l;

    .line 26
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->z:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->A:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->B:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->B:Ljava/util/List;

    .line 29
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/l;->C:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/m;->C:Z

    .line 30
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->D:Lcom/twitter/sdk/android/core/models/User;

    .line 31
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/l;->E:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/m;->E:Z

    .line 32
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->F:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->F:Ljava/util/List;

    .line 33
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/m;->G:Ljava/lang/String;

    .line 34
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->H:Lcom/twitter/sdk/android/core/models/d;

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/m;->H:Lcom/twitter/sdk/android/core/models/d;

    return-object p0
.end method

.method public c(Z)Lcom/twitter/sdk/android/core/models/m;
    .locals 0

    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/m;->g:Z

    return-object p0
.end method

.method public d(J)Lcom/twitter/sdk/android/core/models/m;
    .locals 0

    iput-wide p1, p0, Lcom/twitter/sdk/android/core/models/m;->i:J

    return-object p0
.end method
