.class public final synthetic Lcom/google/common/collect/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/j1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/j1;

    invoke-direct {v0}, Lcom/google/common/collect/j1;-><init>()V

    sput-object v0, Lcom/google/common/collect/j1;->a:Lcom/google/common/collect/j1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableSet$a;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet$a;->h()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method
