.class public final synthetic Lcom/google/common/hash/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/google/common/hash/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/hash/d;

    invoke-direct {v0}, Lcom/google/common/hash/d;-><init>()V

    sput-object v0, Lcom/google/common/hash/d;->a:Lcom/google/common/hash/d;

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

    check-cast p1, Lcom/google/common/hash/BloomFilter;

    invoke-virtual {p1, p2}, Lcom/google/common/hash/BloomFilter;->put(Ljava/lang/Object;)Z

    return-void
.end method
