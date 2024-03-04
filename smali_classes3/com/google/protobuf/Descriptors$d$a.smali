.class Lcom/google/protobuf/Descriptors$d$a;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/google/protobuf/Descriptors$e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(ILcom/google/protobuf/Descriptors$e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iput p1, p0, Lcom/google/protobuf/Descriptors$d$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/protobuf/Descriptors$e;Lcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Descriptors$d$a;-><init>(ILcom/google/protobuf/Descriptors$e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$d$a;)I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/Descriptors$d$a;->a:I

    return p0
.end method
