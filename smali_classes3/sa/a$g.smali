.class Lsa/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/a;->t(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lsa/a;


# direct methods
.method constructor <init>(Lsa/a;)V
    .locals 0

    iput-object p1, p0, Lsa/a$g;->a:Lsa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p1, p0, Lsa/a$g;->a:Lsa/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsa/a;->a(Lsa/a;Z)Z

    .line 2
    iget-object p1, p0, Lsa/a$g;->a:Lsa/a;

    invoke-static {p1}, Lsa/a;->b(Lsa/a;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p0, p1}, Lsa/a$g;->a(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
