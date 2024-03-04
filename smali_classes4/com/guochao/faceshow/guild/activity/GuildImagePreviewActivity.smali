.class public final Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;
.super Lcom/previewlibrary/GPreviewActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;",
        "Lcom/previewlibrary/GPreviewActivity;",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "finish",
        "",
        "onBackPressed",
        "component_guild_release"
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
.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/previewlibrary/GPreviewActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;->onBackPressed$lambda-0(Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;)V

    return-void
.end method

.method private static final onBackPressed$lambda-0(Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;->finish()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/previewlibrary/GPreviewActivity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/previewlibrary/GPreviewActivity;->onBackPressed()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/l0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/l0;-><init>(Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
