.class public abstract Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "TT;TVH;>;"
    }
.end annotation


# static fields
.field public static f:Lbb/c; = null

.field public static g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem; = null

.field public static h:Ljava/lang/String; = ""
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static i:Ljava/lang/Boolean;


# instance fields
.field a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

.field b:Landroid/widget/FrameLayout;

.field c:Lkb/b;

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->e:Z

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->X1(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->Z1()V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->V1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private T1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->setFloatViewListener(Lkb/a;)V

    return-void
.end method

.method private V1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "3"

    .line 2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "userId"

    const-string v2, "="

    const-string v3, "&"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "facecast://video/detail?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v3, p1, v0

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    aget-object v7, v3, v5

    aget-object v3, v3, v6

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v0, "videoId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "video_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v0, "videoUrl"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v0, "videoImg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "imgUrl"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "user_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_2
    const-string v0, "4"

    .line 16
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "titleName"

    const/4 v8, 0x2

    if-eqz v0, :cond_5

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "facecast://videotopic?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 21
    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 23
    array-length v3, v1

    if-ne v3, v8, :cond_3

    .line 24
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    aget-object v4, v1, v5

    aget-object v1, v1, v6

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v0, "topicId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v1, "topicName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "topic_id"

    .line 29
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "fromdanke"

    .line 31
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_5
    const-string v0, "5"

    .line 33
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "facecast://musictopic?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 38
    array-length p2, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_7

    aget-object v1, p1, v0

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    array-length v3, v1

    if-ne v3, v8, :cond_6

    .line 41
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    aget-object v4, v1, v5

    aget-object v1, v1, v6

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v0, "musicId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v2, "musicName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v3, "musicUrl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_8
    const-string v0, "6"

    .line 50
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "facecast://homepage?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 54
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 55
    array-length p2, p1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_a

    aget-object v3, p1, v0

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 57
    array-length v4, v3

    if-ne v4, v8, :cond_9

    .line 58
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    aget-object v7, v3, v5

    aget-object v3, v3, v6

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 59
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 60
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_b
    const-string v0, "1"

    .line 63
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "facecast://webview?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 65
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 67
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 68
    array-length p2, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_d

    aget-object v1, p1, v0

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    array-length v3, v1

    if-ne v3, v8, :cond_c

    .line 71
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    aget-object v4, v1, v5

    aget-object v1, v1, v6

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 72
    :cond_d
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string p2, "h5Type"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 73
    :cond_e
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v0, "h5Url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    :cond_f
    const-string p2, "0"

    .line 74
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 75
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string p2, "shareUrl"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 76
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v0, "shareImg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->d:Ljava/util/HashMap;

    const-string v1, "shareText"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v1

    .line 79
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->i(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->h(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_5

    .line 81
    :cond_10
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 82
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_11
    :goto_5
    return-void
.end method

.method private X1(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/guochao/faceshow/activity/MainActivity;->w:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->Y1(Landroid/app/Activity;)Lkb/b;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->c:Lkb/b;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/views/floatwindow/FloatView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->c:Lkb/b;

    invoke-direct {v0, p1, v1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;-><init>(Landroid/content/Context;Lkb/b;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->T1()V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v3, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->getVideoViewWrap()Landroid/widget/ImageView;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->floatIconUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 13
    sput-boolean v2, Lcom/guochao/faceshow/activity/MainActivity;->w:Z

    .line 14
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private Y1(Landroid/app/Activity;)Lkb/b;
    .locals 8

    .line 1
    new-instance v0, Lkb/b;

    invoke-direct {v0}, Lkb/b;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/utils/AAMethod;->getScreenWidth(Landroid/app/Activity;)I

    move-result v1

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/utils/AAMethod;->getScreenHeight(Landroid/app/Activity;)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    .line 4
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v0, Lkb/b;->a:I

    .line 5
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v0, Lkb/b;->b:I

    .line 6
    new-instance v3, Ljava/lang/Double;

    int-to-double v4, v2

    const-wide v6, 0x3fe8a3d70a3d70a4L    # 0.77

    mul-double v4, v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    .line 7
    invoke-static {p1, v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v1, v4

    iput v4, v0, Lkb/b;->c:I

    sub-int v3, v2, v3

    .line 8
    iput v3, v0, Lkb/b;->d:I

    const/high16 v3, 0x42c80000    # 100.0f

    .line 9
    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Lkb/b;->e:I

    .line 10
    iput v1, v0, Lkb/b;->f:I

    .line 11
    iput v2, v0, Lkb/b;->g:I

    const/4 p1, 0x2

    .line 12
    iput p1, v0, Lkb/b;->k:I

    const/16 p1, 0xc8

    .line 13
    iput p1, v0, Lkb/b;->i:I

    .line 14
    iput p1, v0, Lkb/b;->h:I

    int-to-float p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 15
    iput p1, v0, Lkb/b;->j:F

    return-object v0
.end method

.method private Z1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public U1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public W1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->f:Lbb/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;)V

    invoke-virtual {v0, v1}, Lbb/b;->l(Lod/a;)V

    return-void
.end method

.method public a2()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 2
    sget-boolean v1, Lcom/guochao/faceshow/BaseAppContext;->isClearHalloween:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v3, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public loadData(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->W1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lbb/c;

    invoke-direct {p1}, Lbb/c;-><init>()V

    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->f:Lbb/c;

    return-void
.end method
