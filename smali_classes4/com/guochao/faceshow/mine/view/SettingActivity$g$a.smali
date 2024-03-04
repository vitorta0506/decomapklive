.class Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SettingActivity$g;->onClick(Landroid/app/Dialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SettingActivity$g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SettingActivity$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;->a:Lcom/guochao/faceshow/mine/view/SettingActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSucceed()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/SettingActivity$g$a$a;-><init>(Lcom/guochao/faceshow/mine/view/SettingActivity$g$a;)V

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DataCleanManager;->clearIMFiles(Lcom/guochao/faceshow/utils/DataCleanManager$ClearCallBack;)V

    return-void
.end method
