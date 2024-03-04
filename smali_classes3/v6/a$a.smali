.class final enum Lv6/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv6/a$a;",
        ">;",
        "Ljava/util/Comparator<",
        "Lcom/google/protobuf/Duration;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lv6/a$a;

.field private static final synthetic b:[Lv6/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv6/a$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv6/a$a;->a:Lv6/a$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lv6/a$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lv6/a$a;->b:[Lv6/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv6/a$a;
    .locals 1

    const-class v0, Lv6/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv6/a$a;

    return-object p0
.end method

.method public static values()[Lv6/a$a;
    .locals 1

    sget-object v0, Lv6/a$a;->b:[Lv6/a$a;

    invoke-virtual {v0}, [Lv6/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv6/a$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lv6/a;->a(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 2
    invoke-static {p2}, Lv6/a;->a(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/protobuf/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Duration;->getNanos()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/protobuf/Duration;->getNanos()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/Duration;

    check-cast p2, Lcom/google/protobuf/Duration;

    invoke-virtual {p0, p1, p2}, Lv6/a$a;->a(Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)I

    move-result p1

    return p1
.end method
