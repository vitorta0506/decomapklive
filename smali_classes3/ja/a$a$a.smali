.class Lja/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/guochao/faceshow/session/model/UserSessionModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lja/a$a;


# direct methods
.method constructor <init>(Lja/a$a;)V
    .locals 0

    iput-object p1, p0, Lja/a$a$a;->a:Lja/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/session/model/UserSessionModel;)V
    .locals 3

    const-string v0, "user_guide"

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lja/a$a$a;->a:Lja/a$a;

    iget-object p1, p1, Lja/a$a;->a:Lja/a;

    invoke-static {p1, v0}, Lja/a;->a(Lja/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lja/a$a$a;->a:Lja/a$a;

    iget-object v1, v1, Lja/a$a;->a:Lja/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lja/a;->a(Lja/a;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    invoke-virtual {p0, p1}, Lja/a$a$a;->a(Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    return-void
.end method
