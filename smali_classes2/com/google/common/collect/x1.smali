.class public final synthetic Lcom/google/common/collect/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/x1;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/x1;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/o2;->m(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method
