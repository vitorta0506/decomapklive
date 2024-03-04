.class public final synthetic Lcom/google/common/math/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# static fields
.field public static final synthetic a:Lcom/google/common/math/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/k;

    invoke-direct {v0}, Lcom/google/common/math/k;-><init>()V

    sput-object v0, Lcom/google/common/math/k;->a:Lcom/google/common/math/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;D)V
    .locals 0

    check-cast p1, Lcom/google/common/math/o;

    invoke-virtual {p1, p2, p3}, Lcom/google/common/math/o;->a(D)V

    return-void
.end method
