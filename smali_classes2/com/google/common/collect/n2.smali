.class public final synthetic Lcom/google/common/collect/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/n2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/n2;

    invoke-direct {v0}, Lcom/google/common/collect/n2;-><init>()V

    sput-object v0, Lcom/google/common/collect/n2;->a:Lcom/google/common/collect/n2;

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

    check-cast p1, Lcom/google/common/collect/ImmutableRangeSet$d;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$d;->a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$d;

    return-void
.end method
