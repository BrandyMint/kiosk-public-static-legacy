###* @jsx React.DOM ###

window.BasketButton = React.createClass
  propTypes:
    itemsCount: React.PropTypes.object.isRequired
    price: React.PropTypes.object
    link: React.PropTypes.object

  render: ->
    if @props.itemsCount > 0
      return `<BasketButton_Full link={this.props.link} itemsCount={this.props.itemsCount} price={this.props.price}/>`
    else
      return `<BasketButton_Empty link={this.props.link}/>`

window.BasketButton_Full = React.createClass
  render: ->
    return `<a className='navbar-cart-btn navbar-cart-btn-full' data-cart={this.props.itemsCount} href={this.props.link}>
          <span className='navbar-cart-btn-icon'></span>
          <span className='navbar-cart-btn-caption'>
            Корзина — {accounting.formatMoney(this.props.price)}
          </span>
        </a>`

window.BasketButton_Empty = React.createClass
  render: ->
    return `<a className='navbar-cart-btn navbar-cart-btn-empty' href={this.props.link}>
          <span className='navbar-cart-btn-icon'></span>
          <span className='navbar-cart-btn-caption'>
            Корзина
          </span>
        </a>`