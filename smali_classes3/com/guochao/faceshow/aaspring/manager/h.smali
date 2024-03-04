.class public Lcom/guochao/faceshow/aaspring/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/a$k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/manager/a$k<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field private b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/a$k<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/io/File;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/h;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->d:Z

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 5
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXPathV2()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->e:Ljava/io/File;

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_0
    iput p3, p0, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/manager/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->d:Z

    return p1
.end method

.method private i(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getModuleCode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "parster"

    goto :goto_0

    :cond_0
    const-string p1, "soundEffect"

    goto :goto_0

    :cond_1
    const-string p1, "imEmoji"

    goto :goto_0

    :cond_2
    const-string p1, "effect"

    goto :goto_0

    :cond_3
    const-string p1, "gift_v2"

    .line 2
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_4

    const-string p1, "gift_face_track_v2"

    .line 3
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->e:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private j(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/h;->i(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getModuleCode()I

    move-result p1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPasterImg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPasterImg()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFileUrlV2()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_5

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFaceEffectUrlV2()Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 14
    iget v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    const/16 v3, 0x64

    if-le v1, v3, :cond_7

    const/16 v3, 0x2710

    if-eq v1, v3, :cond_7

    const/16 v3, 0x2711

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_7

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method private static k(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p2, 0x1

    const-string v0, ""

    if-eq p0, p2, :cond_4

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3

    const/4 p2, 0x5

    if-eq p0, p2, :cond_2

    const/16 p2, 0x2711

    if-eq p0, p2, :cond_1

    const/16 p2, 0x2712

    if-eq p0, p2, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "paster"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "gift_face_track_v2"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "gift_face_track"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "soundEffect"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "effect"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "gift_v2"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_id_"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/manager/h;->k(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private m(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/guochao/faceshow/utils/Md5;->getMd5ByFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static n(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/manager/h;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getModuleCode()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/h;->o(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)Lcom/guochao/faceshow/aaspring/manager/h;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)Lcom/guochao/faceshow/aaspring/manager/h;
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/h;->l(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/h;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/manager/h;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-direct {v2, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/h;-><init>(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)V

    .line 4
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p0, v2, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 6
    iput-object p1, v2, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 7
    iput p2, v2, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    :goto_0
    return-object v2
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;DJJ)V
    .locals 12
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/faceshow/aaspring/manager/a$k;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 2
    invoke-interface/range {v3 .. v11}, Lcom/guochao/faceshow/aaspring/manager/a$k;->a(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;DJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/a$k;

    .line 2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/manager/a$k;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/h;->p(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    return-void
.end method

.method public g(Lcom/guochao/faceshow/aaspring/manager/a$k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/manager/a$k<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/h;->h(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-interface {p1, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/a$k;->c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected h(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/h;->j(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Md5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMd5()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Md5()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFaceMd5V2()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFileUrlMd5V2()Ljava/lang/String;

    move-result-object p2

    .line 6
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return-object v1

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/h;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 9
    :cond_4
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p1

    :cond_5
    return-object v1
.end method

.method public p(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/a$k;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/a$k;->c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/manager/h;->q(Lcom/guochao/faceshow/aaspring/manager/a$k;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lcom/guochao/faceshow/aaspring/manager/a$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/manager/a$k<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/h;->h(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/h;->p(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->d:Z

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->f:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    const/16 v0, 0x2712

    if-eq v1, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPasterImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPasterImg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFaceEffectUrlV2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFileUrlV2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/h;->d:Z

    return-void

    .line 13
    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/h;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/h;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/h;->j(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/manager/h$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/manager/h$a;-><init>(Lcom/guochao/faceshow/aaspring/manager/h;)V

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->download(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    return-void
.end method
