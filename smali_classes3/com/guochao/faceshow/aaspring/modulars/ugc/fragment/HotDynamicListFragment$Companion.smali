.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;",
        "",
        "()V",
        "getInstance",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;",
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

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "type"

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
