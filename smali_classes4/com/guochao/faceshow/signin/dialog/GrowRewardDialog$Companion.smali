.class public final Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;",
        "",
        "()V",
        "showDialog",
        "Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "type",
        "",
        "taskBean",
        "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
        "lib_sign_in_release"
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

    invoke-direct {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic showDialog$default(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/signin/bean/GrowTaskBean;ILjava/lang/Object;)Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/signin/bean/GrowTaskBean;)Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final showDialog(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/signin/bean/GrowTaskBean;)Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "type"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "GrowTaskBean"

    .line 4
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    const-class p2, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method
