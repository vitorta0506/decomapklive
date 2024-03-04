.class public final Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u0012\u00101\u001a\u00020.2\n\u0008\u0002\u00102\u001a\u0004\u0018\u000103R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\n\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0011\"\u0004\u0008$\u0010\u0013R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0011\"\u0004\u0008&\u0010\u0013R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u00064"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;",
        "",
        "itemView",
        "Landroid/view/View;",
        "mode",
        "",
        "fragmentActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "private",
        "",
        "fromUgc",
        "(Landroid/view/View;ILandroidx/fragment/app/FragmentActivity;ZZ)V",
        "getFragmentActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "setFragmentActivity",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "getFromUgc",
        "()Z",
        "setFromUgc",
        "(Z)V",
        "getItemView",
        "()Landroid/view/View;",
        "setItemView",
        "(Landroid/view/View;)V",
        "lookVideBean",
        "Lcom/guochao/faceshow/aaspring/beans/LookVideBean;",
        "getLookVideBean",
        "()Lcom/guochao/faceshow/aaspring/beans/LookVideBean;",
        "setLookVideBean",
        "(Lcom/guochao/faceshow/aaspring/beans/LookVideBean;)V",
        "getMode",
        "()I",
        "setMode",
        "(I)V",
        "other",
        "getOther",
        "setOther",
        "getPrivate",
        "setPrivate",
        "ugcId",
        "",
        "getUgcId",
        "()Ljava/lang/String;",
        "setUgcId",
        "(Ljava/lang/String;)V",
        "bind",
        "",
        "bean",
        "Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;",
        "share",
        "onListener",
        "Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private fragmentActivity:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fromUgc:Z

.field private itemView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lookVideBean:Lcom/guochao/faceshow/aaspring/beans/LookVideBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mode:I

.field private other:Z

.field private private:Z

.field private ugcId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroidx/fragment/app/FragmentActivity;ZZ)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->itemView:Landroid/view/View;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->mode:I

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 5
    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->private:Z

    .line 6
    iput-boolean p5, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->fromUgc:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;ILandroidx/fragment/app/FragmentActivity;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;-><init>(Landroid/view/View;ILandroidx/fragment/app/FragmentActivity;ZZ)V

    return-void
.end method

.method public static synthetic share$default(Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->share(Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public final getFromUgc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->fromUgc:Z

    return v0
.end method

.method public final getItemView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public final getLookVideBean()Lcom/guochao/faceshow/aaspring/beans/LookVideBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->lookVideBean:Lcom/guochao/faceshow/aaspring/beans/LookVideBean;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->mode:I

    return v0
.end method

.method public final getOther()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->other:Z

    return v0
.end method

.method public final getPrivate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->private:Z

    return v0
.end method

.method public final getUgcId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->ugcId:Ljava/lang/String;

    return-object v0
.end method

.method public final setFragmentActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final setFromUgc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->fromUgc:Z

    return-void
.end method

.method public final setItemView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->itemView:Landroid/view/View;

    return-void
.end method

.method public final setLookVideBean(Lcom/guochao/faceshow/aaspring/beans/LookVideBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LookVideBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->lookVideBean:Lcom/guochao/faceshow/aaspring/beans/LookVideBean;

    return-void
.end method

.method public final setMode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->mode:I

    return-void
.end method

.method public final setOther(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->other:Z

    return-void
.end method

.method public final setPrivate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->private:Z

    return-void
.end method

.method public final setUgcId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->ugcId:Ljava/lang/String;

    return-void
.end method

.method public final share(Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
