.class public final enum Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeclKindCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

.field public static final enum DECLKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

.field public static final enum FUNCTION:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

.field public static final enum IDENT:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    const-string v1, "IDENT"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->IDENT:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    const-string v4, "FUNCTION"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->FUNCTION:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    const-string v7, "DECLKIND_NOT_SET"

    invoke-direct {v4, v7, v3, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->DECLKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    new-array v6, v6, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    .line 4
    sput-object v6, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->$VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->FUNCTION:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->IDENT:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->DECLKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->$VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Decl$DeclKindCase;->value:I

    return v0
.end method
