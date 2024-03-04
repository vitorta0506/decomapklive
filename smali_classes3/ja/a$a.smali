.class Lja/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lja/a;


# direct methods
.method constructor <init>(Lja/a;)V
    .locals 0

    iput-object p1, p0, Lja/a$a;->a:Lja/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    new-instance v1, Lja/a$a$a;

    invoke-direct {v1, p0}, Lja/a$a$a;-><init>(Lja/a$a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
