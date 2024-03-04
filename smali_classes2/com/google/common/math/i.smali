.class public final synthetic Lcom/google/common/math/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic a:Lcom/google/common/math/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/i;

    invoke-direct {v0}, Lcom/google/common/math/i;-><init>()V

    sput-object v0, Lcom/google/common/math/i;->a:Lcom/google/common/math/i;

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

    check-cast p1, Lcom/google/common/math/o;

    check-cast p2, Lcom/google/common/math/o;

    invoke-static {p1, p2}, Lcom/google/common/math/Stats;->a(Lcom/google/common/math/o;Lcom/google/common/math/o;)Lcom/google/common/math/o;

    move-result-object p1

    return-object p1
.end method
