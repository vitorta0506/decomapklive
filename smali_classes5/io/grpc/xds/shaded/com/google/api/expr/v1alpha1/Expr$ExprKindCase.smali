.class public final enum Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExprKindCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum CALL_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum COMPREHENSION_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum CONST_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum EXPRKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum IDENT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum LIST_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum SELECT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

.field public static final enum STRUCT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v1, "CONST_EXPR"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->CONST_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v4, "IDENT_EXPR"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->IDENT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v7, "SELECT_EXPR"

    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-direct {v4, v7, v8, v9}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->SELECT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    .line 4
    new-instance v7, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v10, "CALL_EXPR"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v3, v11}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->CALL_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    .line 5
    new-instance v10, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v12, "LIST_EXPR"

    const/4 v13, 0x7

    invoke-direct {v10, v12, v6, v13}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->LIST_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    .line 6
    new-instance v12, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v14, "STRUCT_EXPR"

    const/16 v15, 0x8

    invoke-direct {v12, v14, v9, v15}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->STRUCT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    .line 7
    new-instance v14, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v9, "COMPREHENSION_EXPR"

    const/16 v6, 0x9

    invoke-direct {v14, v9, v11, v6}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->COMPREHENSION_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    .line 8
    new-instance v6, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    const-string v9, "EXPRKIND_NOT_SET"

    invoke-direct {v6, v9, v13, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->EXPRKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    new-array v9, v15, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v4, v9, v8

    aput-object v7, v9, v3

    const/4 v0, 0x4

    aput-object v10, v9, v0

    const/4 v0, 0x5

    aput-object v12, v9, v0

    aput-object v14, v9, v11

    aput-object v6, v9, v13

    .line 9
    sput-object v9, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->$VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->COMPREHENSION_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->STRUCT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->LIST_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->CALL_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->SELECT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->IDENT_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->CONST_EXPR:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->EXPRKIND_NOT_SET:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->$VALUES:[Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$ExprKindCase;->value:I

    return v0
.end method
