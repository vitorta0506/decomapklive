.class Lb8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb8/e;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb8/e;


# direct methods
.method constructor <init>(Lb8/e;)V
    .locals 0

    iput-object p1, p0, Lb8/e$a;->a:Lb8/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCrystalsChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lp9/b;->a(Lp9/a$e;I)V

    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb8/e$a;->a:Lb8/e;

    iget-object v0, v0, Lb8/e;->a:Lcom/guochao/faceshow/bean/UserBean;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    if-eqz v0, :cond_0

    .line 2
    iput p1, v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->diamond:I

    :cond_0
    return-void
.end method
