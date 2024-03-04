.class public final synthetic Lcom/google/common/util/concurrent/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# static fields
.field public static final synthetic a:Lcom/google/common/util/concurrent/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/m;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/m;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/m;->a:Lcom/google/common/util/concurrent/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(JJ)J
    .locals 0

    add-long/2addr p1, p3

    return-wide p1
.end method
