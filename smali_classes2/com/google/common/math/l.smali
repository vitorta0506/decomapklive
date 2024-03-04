.class public final synthetic Lcom/google/common/math/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# static fields
.field public static final synthetic a:Lcom/google/common/math/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/l;

    invoke-direct {v0}, Lcom/google/common/math/l;-><init>()V

    sput-object v0, Lcom/google/common/math/l;->a:Lcom/google/common/math/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 2

    check-cast p1, Lcom/google/common/math/o;

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/common/math/o;->a(D)V

    return-void
.end method
