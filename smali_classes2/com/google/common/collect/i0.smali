.class public final synthetic Lcom/google/common/collect/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/i0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/i0;

    invoke-direct {v0}, Lcom/google/common/collect/i0;-><init>()V

    sput-object v0, Lcom/google/common/collect/i0;->a:Lcom/google/common/collect/i0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$b;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedSet$b;->l(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$b;

    return-void
.end method
