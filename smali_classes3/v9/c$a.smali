.class Lv9/c$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:Lu9/a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V
    .locals 0

    iput-object p1, p0, Lv9/c$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lv9/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lv9/c$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lv9/c$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lv9/c$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lv9/c$a;->f:Ljava/lang/String;

    iput p7, p0, Lv9/c$a;->g:I

    iput-object p8, p0, Lv9/c$a;->h:Lu9/a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lv9/c$a;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 9

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lv9/c$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lv9/c$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lv9/c$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lv9/c$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lv9/c$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lv9/c$a;->f:Ljava/lang/String;

    iget v6, p0, Lv9/c$a;->g:I

    iget-object v7, p0, Lv9/c$a;->h:Lu9/a;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lv9/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;Ljava/lang/String;)V

    return-void
.end method
