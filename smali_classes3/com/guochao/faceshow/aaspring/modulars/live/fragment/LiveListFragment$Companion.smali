.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;",
        "",
        "()V",
        "PAGE_SIZE",
        "",
        "getPAGE_SIZE$annotations",
        "getPAGE_SIZE",
        "()I",
        "sShowedLiveTips",
        "",
        "getInstance",
        "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;",
        "type",
        "country",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$default(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;ILcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;->getInstance(ILcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPAGE_SIZE$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInstance(ILcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "country"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final getPAGE_SIZE()I
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$getPAGE_SIZE$cp()I

    move-result v0

    return v0
.end method
