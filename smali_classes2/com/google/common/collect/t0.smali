.class public final synthetic Lcom/google/common/collect/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/t0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/t0;

    invoke-direct {v0}, Lcom/google/common/collect/t0;-><init>()V

    sput-object v0, Lcom/google/common/collect/t0;->a:Lcom/google/common/collect/t0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$b;

    check-cast p2, Lcom/google/common/collect/ImmutableSortedSet$b;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedSet$b;->p(Lcom/google/common/collect/ImmutableSet$a;)Lcom/google/common/collect/ImmutableSortedSet$b;

    move-result-object p1

    return-object p1
.end method
