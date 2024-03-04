.class Lcom/guochao/faceshow/activity/MainActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$c;->a:Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MainActivity$c;->a:Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->initDisplayListener(Landroid/content/Context;)V

    return-void
.end method
