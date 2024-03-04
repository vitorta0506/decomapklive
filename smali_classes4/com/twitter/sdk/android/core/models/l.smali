.class public Lcom/twitter/sdk/android/core/models/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "full_text"
        }
        value = "text"
    .end annotation
.end field

.field public final B:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_text_range"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "truncated"
    .end annotation
.end field

.field public final D:Lcom/twitter/sdk/android/core/models/User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field public final E:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_copyright"
    .end annotation
.end field

.field public final F:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_in_countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_scope"
    .end annotation
.end field

.field public final H:Lcom/twitter/sdk/android/core/models/d;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field public final a:Lcom/twitter/sdk/android/core/models/e;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coordinates"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_user_retweet"
    .end annotation
.end field

.field public final d:Lcom/twitter/sdk/android/core/models/n;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entities"
    .end annotation
.end field

.field public final e:Lcom/twitter/sdk/android/core/models/n;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extended_entities"
    .end annotation
.end field

.field public final f:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field public final g:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorited"
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_level"
    .end annotation
.end field

.field public final i:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_str"
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_screen_name"
    .end annotation
.end field

.field public final l:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id"
    .end annotation
.end field

.field public final m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id_str"
    .end annotation
.end field

.field public final n:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id"
    .end annotation
.end field

.field public final o:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id_str"
    .end annotation
.end field

.field public final p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field public final q:Lcom/twitter/sdk/android/core/models/k;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "place"
    .end annotation
.end field

.field public final r:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "possibly_sensitive"
    .end annotation
.end field

.field public final s:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scopes"
    .end annotation
.end field

.field public final t:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status_id"
    .end annotation
.end field

.field public final u:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status_id_str"
    .end annotation
.end field

.field public final v:Lcom/twitter/sdk/android/core/models/l;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status"
    .end annotation
.end field

.field public final w:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweet_count"
    .end annotation
.end field

.field public final x:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted"
    .end annotation
.end field

.field public final y:Lcom/twitter/sdk/android/core/models/l;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted_status"
    .end annotation
.end field

.field public final z:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 39

    move-object/from16 v0, p0

    .line 1
    sget-object v5, Lcom/twitter/sdk/android/core/models/n;->f:Lcom/twitter/sdk/android/core/models/n;

    move-object v4, v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-string v11, "0"

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "0"

    const-wide/16 v16, 0x0

    const-string v18, "0"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-string v25, "0"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v0 .. v38}, Lcom/twitter/sdk/android/core/models/l;-><init>(Lcom/twitter/sdk/android/core/models/e;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/n;Lcom/twitter/sdk/android/core/models/n;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/k;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/models/l;IZLcom/twitter/sdk/android/core/models/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/models/e;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/n;Lcom/twitter/sdk/android/core/models/n;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/k;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/models/l;IZLcom/twitter/sdk/android/core/models/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/e;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/twitter/sdk/android/core/models/n;",
            "Lcom/twitter/sdk/android/core/models/n;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/k;",
            "Z",
            "Ljava/lang/Object;",
            "J",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/l;",
            "IZ",
            "Lcom/twitter/sdk/android/core/models/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/twitter/sdk/android/core/models/User;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/d;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->a:Lcom/twitter/sdk/android/core/models/e;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->b:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->c:Ljava/lang/Object;

    if-nez p4, :cond_0

    .line 6
    sget-object v1, Lcom/twitter/sdk/android/core/models/n;->f:Lcom/twitter/sdk/android/core/models/n;

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    if-nez p5, :cond_1

    .line 7
    sget-object v1, Lcom/twitter/sdk/android/core/models/n;->f:Lcom/twitter/sdk/android/core/models/n;

    goto :goto_1

    :cond_1
    move-object v1, p5

    :goto_1
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->e:Lcom/twitter/sdk/android/core/models/n;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->f:Ljava/lang/Integer;

    move v1, p7

    .line 9
    iput-boolean v1, v0, Lcom/twitter/sdk/android/core/models/l;->g:Z

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->h:Ljava/lang/String;

    move-wide v1, p9

    .line 11
    iput-wide v1, v0, Lcom/twitter/sdk/android/core/models/l;->i:J

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->j:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->k:Ljava/lang/String;

    move-wide/from16 v1, p13

    .line 14
    iput-wide v1, v0, Lcom/twitter/sdk/android/core/models/l;->l:J

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->m:Ljava/lang/String;

    move-wide/from16 v1, p16

    .line 16
    iput-wide v1, v0, Lcom/twitter/sdk/android/core/models/l;->n:J

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->o:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->p:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->q:Lcom/twitter/sdk/android/core/models/k;

    move/from16 v1, p21

    .line 20
    iput-boolean v1, v0, Lcom/twitter/sdk/android/core/models/l;->r:Z

    move-object/from16 v1, p22

    .line 21
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->s:Ljava/lang/Object;

    move-wide/from16 v1, p23

    .line 22
    iput-wide v1, v0, Lcom/twitter/sdk/android/core/models/l;->t:J

    move-object/from16 v1, p25

    .line 23
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->u:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 24
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->v:Lcom/twitter/sdk/android/core/models/l;

    move/from16 v1, p27

    .line 25
    iput v1, v0, Lcom/twitter/sdk/android/core/models/l;->w:I

    move/from16 v1, p28

    .line 26
    iput-boolean v1, v0, Lcom/twitter/sdk/android/core/models/l;->x:Z

    move-object/from16 v1, p29

    .line 27
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->y:Lcom/twitter/sdk/android/core/models/l;

    move-object/from16 v1, p30

    .line 28
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->z:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 29
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->A:Ljava/lang/String;

    .line 30
    invoke-static/range {p32 .. p32}, Lcom/twitter/sdk/android/core/models/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->B:Ljava/util/List;

    move/from16 v1, p33

    .line 31
    iput-boolean v1, v0, Lcom/twitter/sdk/android/core/models/l;->C:Z

    move-object/from16 v1, p34

    .line 32
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    move/from16 v1, p35

    .line 33
    iput-boolean v1, v0, Lcom/twitter/sdk/android/core/models/l;->E:Z

    .line 34
    invoke-static/range {p36 .. p36}, Lcom/twitter/sdk/android/core/models/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->F:Ljava/util/List;

    move-object/from16 v1, p37

    .line 35
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->G:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 36
    iput-object v1, v0, Lcom/twitter/sdk/android/core/models/l;->H:Lcom/twitter/sdk/android/core/models/d;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/l;->i:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/twitter/sdk/android/core/models/l;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/twitter/sdk/android/core/models/l;

    .line 3
    iget-wide v1, p0, Lcom/twitter/sdk/android/core/models/l;->i:J

    iget-wide v3, p1, Lcom/twitter/sdk/android/core/models/l;->i:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/l;->i:J

    long-to-int v1, v0

    return v1
.end method
