.class final Lcom/google/protobuf/s$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private a:[Lcom/google/protobuf/c2;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protobuf/c2;

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/s$e;->a:[Lcom/google/protobuf/c2;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/s$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/s$e;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/c2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$i;",
            ")",
            "Lcom/google/protobuf/c2;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Case_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/google/protobuf/c2;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->o()I

    move-result p1

    invoke-static {p0, v0}, Lcom/google/protobuf/s;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/google/protobuf/s;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-direct {v2, p1, v0, p0}, Lcom/google/protobuf/c2;-><init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    return-object v2
.end method


# virtual methods
.method a(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/c2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$i;",
            ")",
            "Lcom/google/protobuf/c2;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$i;->o()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/s$e;->a:[Lcom/google/protobuf/c2;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 3
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/protobuf/c2;

    iput-object v1, p0, Lcom/google/protobuf/s$e;->a:[Lcom/google/protobuf/c2;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/s$e;->a:[Lcom/google/protobuf/c2;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 5
    invoke-static {p1, p2}, Lcom/google/protobuf/s$e;->b(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/c2;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/google/protobuf/s$e;->a:[Lcom/google/protobuf/c2;

    aput-object v1, p1, v0

    :cond_1
    return-object v1
.end method
