.class final enum Leh/k0$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Leh/k0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leh/k0$b;",
        ">;",
        "Leh/k0$a;"
    }
.end annotation


# static fields
.field public static final enum a:Leh/k0$b;

.field private static final synthetic b:[Leh/k0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Leh/k0$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh/k0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh/k0$b;->a:Leh/k0$b;

    const/4 v1, 0x1

    new-array v1, v1, [Leh/k0$b;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Leh/k0$b;->b:[Leh/k0$b;

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

.method public static valueOf(Ljava/lang/String;)Leh/k0$b;
    .locals 1

    const-class v0, Leh/k0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh/k0$b;

    return-object p0
.end method

.method public static values()[Leh/k0$b;
    .locals 1

    sget-object v0, Leh/k0$b;->b:[Leh/k0$b;

    invoke-virtual {v0}, [Leh/k0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh/k0$b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
