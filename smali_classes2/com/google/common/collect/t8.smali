.class public final synthetic Lcom/google/common/collect/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/t8;->a:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/t8;->a:Ljava/util/function/BinaryOperator;

    check-cast p1, Lcom/google/common/collect/z8$b;

    check-cast p2, Lcom/google/common/collect/z8$b;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/z8;->b(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/z8$b;Lcom/google/common/collect/z8$b;)Lcom/google/common/collect/z8$b;

    move-result-object p1

    return-object p1
.end method
