.class public final synthetic Lcom/google/common/collect/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/n6;->a:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/n6;->a:Ljava/util/function/Consumer;

    check-cast p1, Lcom/google/common/collect/q6$a;

    invoke-static {v0, p1}, Lcom/google/common/collect/p6;->d(Ljava/util/function/Consumer;Lcom/google/common/collect/q6$a;)V

    return-void
.end method
